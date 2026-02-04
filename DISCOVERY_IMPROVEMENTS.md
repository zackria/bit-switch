# Device Discovery Improvements

## Summary

Fixed inconsistent device discovery issues where not all devices were being found.

## Changes Made

### 1. Increased Discovery Timeout (12 seconds)

- Changed from 5 seconds to 12 seconds in `WemoConstants.ssdpTimeout`
- Added 2-second buffer after timeout to catch late responders
- Total effective timeout: ~14 seconds

### 2. Improved M-SEARCH Requests

- Increased MX parameter from 3 to 5 seconds (gives devices more response time)
- Increased M-SEARCH broadcasts from 3 to 5 attempts
- Better staggered timing: 300ms, 300ms, 800ms, 800ms between requests
- Prevents network congestion while ensuring better coverage

### 3. Fixed Socket Listener Timing

- **Critical fix**: Set up socket listener BEFORE sending M-SEARCH requests
- Previous implementation missed early responders
- Now captures all responses from the moment they start arriving

### 4. Added Retry Logic for Setup.xml Fetching

- Devices that don't respond immediately on first attempt now get 2 more tries
- Exponential backoff: 200ms, 400ms between retries
- Handles temporary network hiccups gracefully

## Technical Details

### SSDP Discovery Flow (Improved)

1. Bind UDP socket to any port
2. Enable broadcast
3. **Set up response listener** (moved earlier)
4. Send 5 M-SEARCH multicast packets with staggered timing
5. Send broadcast fallback packet
6. Listen for 12 seconds (+ 2-second buffer)
7. Deduplicate responses by location
8. Fetch setup.xml with retry logic

### Why Devices Were Being Missed

**Before:**

- Socket listener was set up AFTER sending M-SEARCH requests
- Early responses (< 1 second) were lost
- 5-second timeout was too short for slower devices
- MX=3 meant devices could only respond within 0-3 seconds
- Single setup.xml fetch attempt failed on network hiccups

**After:**

- Socket listener ready before any M-SEARCH sent
- 12-second discovery window + 2-second buffer
- MX=5 gives devices 0-5 seconds to respond
- More M-SEARCH attempts with better timing
- Retry logic handles temporary failures

## Expected Results

- **More devices found**: Especially slower-responding devices
- **More consistent**: Multiple M-SEARCH attempts increase reliability
- **Better on busy networks**: Staggered requests and longer timeout
- **Handles network issues**: Retry logic for setup.xml fetches

## Testing

All tests pass:

```bash
flutter test test/core/ssdp_client_test.dart test/services/device_discovery_service_test.dart
# 00:02 +27: All tests passed!
```

## Files Modified

1. `lib/core/constants.dart` - Updated timeout constant
2. `lib/core/ssdp_client.dart` - Improved discovery algorithm
3. `lib/services/device_discovery_service.dart` - Added retry logic
4. `test/core/ssdp_client_test.dart` - Updated test for new MX value

## Recommendations

1. Test on your actual network with real WeMo devices
2. If discovery is still slow, consider increasing timeout further
3. Monitor debug logs to see which improvements help most
4. Can reduce M-SEARCH count to 3-4 if network is reliable
