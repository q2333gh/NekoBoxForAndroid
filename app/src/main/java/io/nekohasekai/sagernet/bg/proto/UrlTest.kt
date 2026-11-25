package io.nekohasekai.sagernet.bg.proto

import io.nekohasekai.sagernet.database.DataStore
import io.nekohasekai.sagernet.database.ProxyEntity

class UrlTest {

    companion object {
        const val TEST_TIMEOUT_MS = 5000
    }

    val link = DataStore.connectionTestURL
    val timeout = TEST_TIMEOUT_MS

    suspend fun doTest(profile: ProxyEntity): Int {
        return TestInstance(profile, link, timeout).doTest()
    }

}
