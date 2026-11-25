package io.nekohasekai.sagernet.aidl;

import io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback;

interface ISagerNetService {
  int getState();
  String getProfileName();

  void registerCallback(in ISagerNetServiceCallback cb, int id);
  oneway void unregisterCallback(in ISagerNetServiceCallback cb);

  int urlTest();

  /**
   * Per-profile URL test inside the bg process (required when VPN is up so sockets
   * can be protect()'d without protect_path IPC).
   */
  int urlTestProfile(long profileId, String link, int timeout);
}
