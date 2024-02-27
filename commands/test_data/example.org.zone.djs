var DSP_BIND = NewDnsProvider("bind", "BIND");
var REG_CHANGEME = NewRegistrar("none");

D("example.org", REG_CHANGEME
	, DnsProvider(DSP_BIND)
	, DefaultTTL(7200)
	//, SOA("@", "ns1.example.org.", "hostmaster.example.org.", 2020030700, 7200, 3600, 864000, 7200, TTL(43200))
	//, NAMESERVER("ns1.example.org.")
	//, NAMESERVER("ns2.example.org.")
	//, NAMESERVER("ns-a.example.net.")
	//, NAMESERVER("friend-dns.example.com.")
	, MX("@", 10, "mx.example.org.")
	, TXT("@", "v=spf1 ip4:192.0.2.25 ip6:2001:db8::1:25 mx include:_spf.example.com ~all")
	, SRV("_client._smtp", 1, 1, 1, "example.org.")
	, SRV("_client._smtp.mx", 1, 2, 1, "mx.example.org.")
	, SRV("_client._smtp.foo", 1, 2, 1, "foo.example.org.")
	, SRV("_kerberos._tcp", 10, 1, 88, "kerb-service.example.org.")
	, SRV("_kerberos._udp", 10, 1, 88, "kerb-service.example.org.")
	, SRV("_kpasswd._udp", 10, 1, 464, "kerb-service.example.org.")
	, SRV("_kerberos-adm._tcp", 10, 1, 749, "kerb-service.example.org.")
	, TXT("_kerberos", "EXAMPLE.ORG")
	, SRV("_ldap._tcp", 0, 0, 0, ".")
	, SRV("_ldap._udp", 0, 0, 0, ".")
	, SRV("_jabber._tcp", 10, 2, 5269, "xmpp-s2s.example.org.")
	, SRV("_xmpp-server._tcp", 10, 2, 5269, "xmpp-s2s.example.org.")
	, SRV("_xmpp-client._tcp", 10, 2, 5222, "xmpp.example.org.")
	, SRV("_im._sip", 0, 0, 0, ".")
	, SRV("_pres._sip", 0, 0, 0, ".")
	, SRV("_sip+d2t._tcp", 0, 0, 0, ".")
	, SRV("_sips+d2t._tcp", 0, 0, 0, ".")
	, SRV("_sip+d2u._udp", 0, 0, 0, ".")
	, SRV("_sip+d2s._sctp", 0, 0, 0, ".")
	, SRV("_sips+d2s._sctp", 0, 0, 0, ".")
	, SRV("_submission._tcp", 10, 10, 587, "smtp.example.org.")
	, SRV("_submissions._tcp", 10, 10, 465, "smtp.example.org.")
	, SRV("_imap._tcp", 10, 10, 143, "imap.example.org.")
	, SRV("_imaps._tcp", 10, 10, 993, "imap.example.org.")
	, SRV("_pop3._tcp", 0, 0, 0, ".")
	, SRV("_pop3s._tcp", 0, 0, 0, ".")
	, SRV("_sieve._tcp", 10, 10, 4190, "imap.example.org.")
	, TXT("dns-moreinfo", "Fred Bloggs, TZ=America/New_YorkChat-Service-X: @handle1Chat-Service-Y: federated-handle@example.org")
	, SRV("_pgpkey-http._tcp", 0, 0, 0, ".")
	, SRV("_pgpkey-https._tcp", 0, 0, 0, ".")
	, SRV("_hkp._tcp", 0, 0, 0, ".")
	, SRV("_openpgpkey._tcp", 10, 10, 443, "openpgpkey.example.org.")
	, SRV("_finger._tcp", 10, 10, 79, "barbican.example.org.")
	, SRV("_avatars-sec._tcp", 10, 10, 443, "avatars.example.org.")
	, A("@", "192.0.2.1")
	, AAAA("@", "2001:db8::1:1")
	, TXT("_adsp._domainkey", "dkim=all")
	, TXT("_dmarc", "v=DMARC1; p=none; sp=none; rua=mailto:dmarc-notify@example.org; ruf=mailto:dmarc-notify@example.org; adkim=s")
	, TXT("d201911._domainkey", "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4SmyE5Tz5/wPL8cb2AKuHnlFeLMOhAl1UX/NYaeDCKMWoBPTgZRT0jonKLmV2UscHdodXu5ZsLr/NAuLCp7HmPLReLz7kxKncP6ppveKxc1aq5SPTKeWe77p6BptlahHc35eiXsZRpTsEzrbEOainy1IWEd+w9p1gWbrSutwE22z0i4V88nQ9UBa1ks6cVGxXBZFovWC+i28aGs6Lc7cSfHG5+Mrg3ud5X4evYXTGFMPpunMcCsXrqmS5a+5gRSEMZhngha/cHjLwaJnWzKaywNWF5XOsCjL94QkS0joB7lnGOHMNSZBCcu542Y3Ht3SgHhlpkF9mIbIRfpzA9IoSQIDAQAB")
	, TXT("d201911e2._domainkey", "v=DKIM1; k=ed25519; p=GBt2k2L39KUb39fg5brOppXDHXvISy0+ECGgPld/bIo=")
	, TXT("d202003._domainkey", "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv/1tQvOEs7xtKNm7PbPgY4hQjwHVvqqkDb0+TeqZHYRSczQ3c0LFJrIDFiPIdwQe/7AuKrxvATSh/uXKZ3EP4ouMgROPZnUxVXENeetJj+pc3nfGwTKUBTTTth+SO74gdIWsntjvAfduzosC4ZkxbDwZ9c253qXARGvGu+LB/iAeq0ngEbm5fU13+Jopv0d4dR6oGe9GvMEnGGLZzNrxWl1BPe2x5JZ5/X/3fW8vJx3OgRB5N6fqbAJ6HZ9kcbikDH4lPPl9RIoprFk7mmwno/nXLQYGhPobmqq8wLkDiXEkWtYa5lzujz3XI3Zkk8ZIOGvdbVVfAttT0IVPnYkOhQIDAQAB")
	, TXT("d202003e2._domainkey", "v=DKIM1; k=ed25519; p=DQI5d9sNMrr0SLDoAi071IFOyKnlbR29hAQdqVQecQg=")
	, TXT("_report", "r=abuse-reports@example.org; rf=ARF; re=postmaster@example.org;")
	, TXT("_smtp._tls", "v=TLSRPTv1; rua=mailto:smtp-tls-reports@example.org")
	, TXT("_smtp-tlsrpt", "v=TLSRPTv1; rua=mailto:smtp-tls-reports@example.org")
	, TXT("example.net._report._dmarc", "v=DMARC1")
	, TXT("example.com._report._dmarc", "v=DMARC1")
	, TXT("xn--2j5b.xn--9t4b11yi5a._report._dmarc", "v=DMARC1")
	, TXT("special.test._report._dmarc", "v=DMARC1")
	, TXT("xn--qck5b9a5eml3bze.xn--zckzah._report._dmarc", "v=DMARC1")
	, CNAME("*._smimecert", "_ourca-smimea.example.org.")
	, PTR("b._dns-sd._udp", "field.example.org.")
	, PTR("lb._dns-sd._udp", "field.example.org.")
	, PTR("r._dns-sd._udp", "field.example.org.")
	, NS("field", "ns1.example.org.")
	, NS("field", "ns2.example.org.")
	, A("barbican", "192.0.2.1")
	, AAAA("barbican", "2001:db8::1:1")
	, A("barbican.ipv4", "192.0.2.1")
	, AAAA("barbican.ipv6", "2001:db8::1:1")
	, A("megalomaniac", "198.51.100.254")
	, AAAA("megalomaniac", "2001:db8:ffef::254")
	, A("megalomaniac.ipv4", "198.51.100.254")
	, AAAA("megalomaniac.ipv6", "2001:db8:ffef::254")
	, SSHFP("megalomaniac", 1, 2, "4e9ced94d3caf2ce915f85a63ce7279d5118a79ea03dac59cf4859b825d2f619")
	, SSHFP("megalomaniac", 3, 2, "d3556a3db83ab9ccec39dc6693dd2f3e28b178c9bba61880924821c426cc61eb")
	, SSHFP("megalomaniac", 4, 2, "c60c9d9d4728668f5f46986ff0c5b416c5e913862c4970cbfe211a6f44a111b4")
	, SSHFP("megalomaniac.ipv4", 1, 2, "4e9ced94d3caf2ce915f85a63ce7279d5118a79ea03dac59cf4859b825d2f619")
	, SSHFP("megalomaniac.ipv4", 3, 2, "d3556a3db83ab9ccec39dc6693dd2f3e28b178c9bba61880924821c426cc61eb")
	, SSHFP("megalomaniac.ipv4", 4, 2, "c60c9d9d4728668f5f46986ff0c5b416c5e913862c4970cbfe211a6f44a111b4")
	, SSHFP("megalomaniac.ipv6", 1, 2, "4e9ced94d3caf2ce915f85a63ce7279d5118a79ea03dac59cf4859b825d2f619")
	, SSHFP("megalomaniac.ipv6", 3, 2, "d3556a3db83ab9ccec39dc6693dd2f3e28b178c9bba61880924821c426cc61eb")
	, SSHFP("megalomaniac.ipv6", 4, 2, "c60c9d9d4728668f5f46986ff0c5b416c5e913862c4970cbfe211a6f44a111b4")
	, A("tower", "192.0.2.42")
	, AAAA("tower", "2001:db8::1:42")
	, A("tower.ipv4", "192.0.2.42")
	, AAAA("tower.ipv6", "2001:db8::1:42")
	, SSHFP("tower", 1, 2, "0f211d236e94768911a294f38653c4af6fa935a5b06c975d8162f59142571451")
	, SSHFP("tower", 3, 2, "88bf7b7401c11fa2e84871efb06cd73d8fc409154605b354db2dda0b82fe1160")
	, SSHFP("tower", 4, 2, "6d30900be0faaae73568fc007a87b4d076cf9a351ecacc1106aef726c34ad61d")
	, SSHFP("tower.ipv4", 1, 2, "0f211d236e94768911a294f38653c4af6fa935a5b06c975d8162f59142571451")
	, SSHFP("tower.ipv4", 3, 2, "88bf7b7401c11fa2e84871efb06cd73d8fc409154605b354db2dda0b82fe1160")
	, SSHFP("tower.ipv4", 4, 2, "6d30900be0faaae73568fc007a87b4d076cf9a351ecacc1106aef726c34ad61d")
	, SSHFP("tower.ipv6", 1, 2, "0f211d236e94768911a294f38653c4af6fa935a5b06c975d8162f59142571451")
	, SSHFP("tower.ipv6", 3, 2, "88bf7b7401c11fa2e84871efb06cd73d8fc409154605b354db2dda0b82fe1160")
	, SSHFP("tower.ipv6", 4, 2, "6d30900be0faaae73568fc007a87b4d076cf9a351ecacc1106aef726c34ad61d")
	, A("vcs", "192.0.2.228")
	, AAAA("vcs", "2001:db8::48:4558:4456:4353")
	, A("vcs.ipv4", "192.0.2.228")
	, AAAA("vcs.ipv6", "2001:db8::48:4558:4456:4353")
	, CNAME("git", "vcs.example.org.")
	, CNAME("git.ipv4", "vcs.ipv4.example.org.")
	, CNAME("git.ipv6", "vcs.ipv6.example.org.")
	, AAAA("svn", "2001:db8::48:4558:73:766e")
	, SSHFP("vcs", 1, 2, "b518be390babdf43cb2d598aa6befa6ce6878546bf107b829d0cfc65253a97d4")
	, SSHFP("vcs", 3, 2, "e92545dc0bf501f72333ddeb7a37afc2c5b408ce39a3ad95fbc66236f0077323")
	, SSHFP("vcs", 4, 2, "02289441124a487095a6cda2e946c6a8ed9087faf3592ec4135536c3e615521c")
	, SSHFP("vcs.ipv4", 1, 2, "b518be390babdf43cb2d598aa6befa6ce6878546bf107b829d0cfc65253a97d4")
	, SSHFP("vcs.ipv4", 3, 2, "e92545dc0bf501f72333ddeb7a37afc2c5b408ce39a3ad95fbc66236f0077323")
	, SSHFP("vcs.ipv4", 4, 2, "02289441124a487095a6cda2e946c6a8ed9087faf3592ec4135536c3e615521c")
	, SSHFP("vcs.ipv6", 1, 2, "b518be390babdf43cb2d598aa6befa6ce6878546bf107b829d0cfc65253a97d4")
	, SSHFP("vcs.ipv6", 3, 2, "e92545dc0bf501f72333ddeb7a37afc2c5b408ce39a3ad95fbc66236f0077323")
	, SSHFP("vcs.ipv6", 4, 2, "02289441124a487095a6cda2e946c6a8ed9087faf3592ec4135536c3e615521c")
	, A("nsauth", "192.0.2.53")
	, AAAA("nsauth", "2001:db8::53:1")
	, A("nsauth.ipv4", "192.0.2.53")
	, AAAA("nsauth.ipv6", "2001:db8::53:1")
	, SSHFP("nsauth", 1, 2, "895804ae022fff643b2677563cb850607c5bb564d9919896c521098c8abc40f2")
	, SSHFP("nsauth", 3, 2, "28a65470badae611375747e1a803211c41e3d71e97741fa92ccbdf7b01f34e42")
	, SSHFP("nsauth", 4, 2, "6e10445c0649c03fa83e18b1873e5b89b3a20893ecb48d01e7cedb3dd563ecf0")
	, SSHFP("nsauth.ipv4", 1, 2, "895804ae022fff643b2677563cb850607c5bb564d9919896c521098c8abc40f2")
	, SSHFP("nsauth.ipv4", 3, 2, "28a65470badae611375747e1a803211c41e3d71e97741fa92ccbdf7b01f34e42")
	, SSHFP("nsauth.ipv4", 4, 2, "6e10445c0649c03fa83e18b1873e5b89b3a20893ecb48d01e7cedb3dd563ecf0")
	, SSHFP("nsauth.ipv6", 1, 2, "895804ae022fff643b2677563cb850607c5bb564d9919896c521098c8abc40f2")
	, SSHFP("nsauth.ipv6", 3, 2, "28a65470badae611375747e1a803211c41e3d71e97741fa92ccbdf7b01f34e42")
	, SSHFP("nsauth.ipv6", 4, 2, "6e10445c0649c03fa83e18b1873e5b89b3a20893ecb48d01e7cedb3dd563ecf0")
	, A("ns1", "192.0.2.53")
	, AAAA("ns1", "2001:db8::53:1")
	, A("ns2", "203.0.113.53")
	, AAAA("ns2", "2001:db8:113::53")
	, A("hermes", "192.0.2.25")
	, AAAA("hermes", "2001:db8::48:4558:736d:7470")
	, AAAA("hermes", "2001:db8::48:4558:696d:6170")
	, A("hermes.ipv4", "192.0.2.25")
	, AAAA("hermes.ipv6", "2001:db8::48:4558:736d:7470")
	, AAAA("hermes.ipv6", "2001:db8::48:4558:696d:6170")
	, SSHFP("hermes", 1, 2, "4472ff5bd0528cd49216af4503ba6a1c48f121d0292a31d6af193e5000af4966")
	, SSHFP("hermes", 3, 2, "eaba20c1565676a5229184ccfcf82d0ee408f91757a67d9fa51a0b6f3db4a33b")
	, SSHFP("hermes", 4, 2, "a9d89920e599d04363c8b35a4ce66c1ed257ea1d16981f060b6aed080bbb7a7c")
	, SSHFP("hermes.ipv4", 1, 2, "4472ff5bd0528cd49216af4503ba6a1c48f121d0292a31d6af193e5000af4966")
	, SSHFP("hermes.ipv4", 3, 2, "eaba20c1565676a5229184ccfcf82d0ee408f91757a67d9fa51a0b6f3db4a33b")
	, SSHFP("hermes.ipv4", 4, 2, "a9d89920e599d04363c8b35a4ce66c1ed257ea1d16981f060b6aed080bbb7a7c")
	, SSHFP("hermes.ipv6", 1, 2, "4472ff5bd0528cd49216af4503ba6a1c48f121d0292a31d6af193e5000af4966")
	, SSHFP("hermes.ipv6", 3, 2, "eaba20c1565676a5229184ccfcf82d0ee408f91757a67d9fa51a0b6f3db4a33b")
	, SSHFP("hermes.ipv6", 4, 2, "a9d89920e599d04363c8b35a4ce66c1ed257ea1d16981f060b6aed080bbb7a7c")
	, A("kerb-service", "192.0.2.88")
	, AAAA("kerb-service", "2001:db8::48:4558:6b65:7262")
	, A("security", "192.0.2.92")
	, AAAA("security", "2001:db8::48:4558:53:4543")
	, A("security.ipv4", "192.0.2.92")
	, AAAA("security.ipv6", "2001:db8::48:4558:53:4543")
	, A("services", "192.0.2.93")
	, AAAA("services", "2001:db8::48:4558:5345:5256")
	, A("services.ipv4", "192.0.2.93")
	, AAAA("services.ipv6", "2001:db8::48:4558:5345:5256")
	, A("openpgpkey", "192.0.2.92")
	, AAAA("openpgpkey", "2001:db8::48:4558:53:4543")
	, CNAME("finger", "barbican.example.org.")
	, CNAME("finger.ipv4", "barbican.ipv4.example.org.")
	, CNAME("finger.ipv6", "barbican.ipv6.example.org.")
	, A("avatars", "192.0.2.93")
	, AAAA("avatars", "2001:db8::48:4558:5345:5256")
	, CNAME("dict", "services.example.org.")
	, CNAME("people", "services.example.org.")
	, CNAME("people.ipv4", "services.ipv4.example.org.")
	, CNAME("people.ipv6", "services.ipv6.example.org.")
	, CNAME("wpad", "services.example.org.")
	, CNAME("www", "services.example.org.")
	, CNAME("www.ipv4", "services.ipv4.example.org.")
	, CNAME("www.ipv6", "services.ipv6.example.org.")
	, CAA("@", "issue", "example.net")
	, CAA("@", "issue", "letsencrypt.org\; accounturi=https://acme-v01.api.letsencrypt.org/acme/reg/1234567")
	, CAA("@", "issue", "letsencrypt.org\; accounturi=https://acme-staging-v02.api.letsencrypt.org/acme/acct/23456789")
	, CAA("@", "issue", "letsencrypt.org\; accounturi=https://acme-v02.api.letsencrypt.org/acme/acct/76543210")
	, CAA("@", "issuewild", ";")
	, CAA("@", "iodef", "mailto:security@example.org")
	, TLSA("_ourcaca4-tlsa", 2, 0, 1, "ea99063a0a3bda9727032cf82da238698b90ba729300703d3956943635f96488")
	, TLSA("_ourcaca5-tlsa", 2, 0, 1, "11f058f61f97b8adc66ef4801f918c71b10e5c1e3d39afde10408b3026647ef1")
	, TLSA("_cacert-c3-tlsa", 2, 0, 1, "4edde9e55ca453b388887caa25d5c5c5bccf2891d73b87495808293d5fac83c8")
	, TLSA("_letsencrypt-tlsa", 2, 1, 1, "60b87575447dcba2a36b7d11ac09fb24a9db406fee12d2cc90180517616e8a18")
	, TLSA("_letsencrypt-tlsa", 2, 1, 1, "b111dd8a1c2091a89bd4fd60c57f0716cce50feeff8137cdbee0326e02cf362b")
	, TLSA("_amazon-tlsa", 2, 0, 1, "8ecde6884f3d87b1125ba31ac3fcb13d7016de7f57cc904fe1cb97c6ae98196e")
	, TLSA("_amazon-tlsa", 2, 0, 1, "1ba5b2aa8c65401a82960118f80bec4f62304d83cec4713a19c39c011ea46db4")
	, TLSA("_amazon-tlsa", 2, 0, 1, "18ce6cfe7bf14e60b2e347b8dfe868cb31d02ebb3ada271569f50343b46db3a4")
	, TLSA("_amazon-tlsa", 2, 0, 1, "e35d28419ed02025cfa69038cd623962458da5c695fbdea3c22b0bfb25897092")
	, TLSA("_ourca-tlsa", 2, 0, 1, "ea99063a0a3bda9727032cf82da238698b90ba729300703d3956943635f96488")
	, TLSA("_ourca-tlsa", 2, 0, 1, "11f058f61f97b8adc66ef4801f918c71b10e5c1e3d39afde10408b3026647ef1")
	, TLSA("_ourca-cacert-tlsa", 2, 0, 1, "ea99063a0a3bda9727032cf82da238698b90ba729300703d3956943635f96488")
	, TLSA("_ourca-cacert-tlsa", 2, 0, 1, "11f058f61f97b8adc66ef4801f918c71b10e5c1e3d39afde10408b3026647ef1")
	, TLSA("_ourca-cacert-tlsa", 2, 0, 1, "4edde9e55ca453b388887caa25d5c5c5bccf2891d73b87495808293d5fac83c8")
	, TLSA("_ourca-le-tlsa", 2, 0, 1, "ea99063a0a3bda9727032cf82da238698b90ba729300703d3956943635f96488")
	, TLSA("_ourca-le-tlsa", 2, 0, 1, "11f058f61f97b8adc66ef4801f918c71b10e5c1e3d39afde10408b3026647ef1")
	, TLSA("_ourca-le-tlsa", 2, 1, 1, "60b87575447dcba2a36b7d11ac09fb24a9db406fee12d2cc90180517616e8a18")
	, TLSA("_ourca-le-tlsa", 2, 1, 1, "b111dd8a1c2091a89bd4fd60c57f0716cce50feeff8137cdbee0326e02cf362b")
	, TLSA("_ourca-cacert-le-tlsa", 2, 0, 1, "ea99063a0a3bda9727032cf82da238698b90ba729300703d3956943635f96488")
	, TLSA("_ourca-cacert-le-tlsa", 2, 0, 1, "11f058f61f97b8adc66ef4801f918c71b10e5c1e3d39afde10408b3026647ef1")
	, TLSA("_ourca-cacert-le-tlsa", 2, 0, 1, "4edde9e55ca453b388887caa25d5c5c5bccf2891d73b87495808293d5fac83c8")
	, TLSA("_ourca-cacert-le-tlsa", 2, 1, 1, "60b87575447dcba2a36b7d11ac09fb24a9db406fee12d2cc90180517616e8a18")
	, TLSA("_ourca-cacert-le-tlsa", 2, 1, 1, "b111dd8a1c2091a89bd4fd60c57f0716cce50feeff8137cdbee0326e02cf362b")
	, TLSA("_cacert-le-tlsa", 2, 0, 1, "4edde9e55ca453b388887caa25d5c5c5bccf2891d73b87495808293d5fac83c8")
	, TLSA("_cacert-le-tlsa", 2, 1, 1, "60b87575447dcba2a36b7d11ac09fb24a9db406fee12d2cc90180517616e8a18")
	, TLSA("_cacert-le-tlsa", 2, 1, 1, "b111dd8a1c2091a89bd4fd60c57f0716cce50feeff8137cdbee0326e02cf362b")
	, TLSA("_le-amazon-tlsa", 2, 1, 1, "60b87575447dcba2a36b7d11ac09fb24a9db406fee12d2cc90180517616e8a18")
	, TLSA("_le-amazon-tlsa", 2, 1, 1, "b111dd8a1c2091a89bd4fd60c57f0716cce50feeff8137cdbee0326e02cf362b")
	, TLSA("_le-amazon-tlsa", 2, 0, 1, "8ecde6884f3d87b1125ba31ac3fcb13d7016de7f57cc904fe1cb97c6ae98196e")
	, TLSA("_le-amazon-tlsa", 2, 0, 1, "1ba5b2aa8c65401a82960118f80bec4f62304d83cec4713a19c39c011ea46db4")
	, TLSA("_le-amazon-tlsa", 2, 0, 1, "18ce6cfe7bf14e60b2e347b8dfe868cb31d02ebb3ada271569f50343b46db3a4")
	, TLSA("_le-amazon-tlsa", 2, 0, 1, "e35d28419ed02025cfa69038cd623962458da5c695fbdea3c22b0bfb25897092")
	, TLSA("_ourca-le-amazon-tlsa", 2, 0, 1, "ea99063a0a3bda9727032cf82da238698b90ba729300703d3956943635f96488")
	, TLSA("_ourca-le-amazon-tlsa", 2, 0, 1, "11f058f61f97b8adc66ef4801f918c71b10e5c1e3d39afde10408b3026647ef1")
	, TLSA("_ourca-le-amazon-tlsa", 2, 1, 1, "60b87575447dcba2a36b7d11ac09fb24a9db406fee12d2cc90180517616e8a18")
	, TLSA("_ourca-le-amazon-tlsa", 2, 1, 1, "b111dd8a1c2091a89bd4fd60c57f0716cce50feeff8137cdbee0326e02cf362b")
	, TLSA("_ourca-le-amazon-tlsa", 2, 0, 1, "8ecde6884f3d87b1125ba31ac3fcb13d7016de7f57cc904fe1cb97c6ae98196e")
	, TLSA("_ourca-le-amazon-tlsa", 2, 0, 1, "1ba5b2aa8c65401a82960118f80bec4f62304d83cec4713a19c39c011ea46db4")
	, TLSA("_ourca-le-amazon-tlsa", 2, 0, 1, "18ce6cfe7bf14e60b2e347b8dfe868cb31d02ebb3ada271569f50343b46db3a4")
	, TLSA("_ourca-le-amazon-tlsa", 2, 0, 1, "e35d28419ed02025cfa69038cd623962458da5c695fbdea3c22b0bfb25897092")
	, CNAME("_443._tcp.www", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.www.ipv4", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.www.ipv6", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.people", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.people.ipv4", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.people.ipv6", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.git", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.svn", "_ourca-le-tlsa.example.org.")
	, CNAME("_5222._tcp.xmpp", "_ourca-le-tlsa.example.org.")
	, CNAME("_5223._tcp.xmpp", "_ourca-le-tlsa.example.org.")
	, CNAME("_5269._tcp.xmpp-s2s", "_ourca-le-tlsa.example.org.")
	, CNAME("_25._tcp.mx", "_ourca-le-tlsa.example.org.")
	, CNAME("_26._tcp.mx", "_ourca-le-tlsa.example.org.")
	, CNAME("_27._tcp.mx", "_ourca-le-tlsa.example.org.")
	, CNAME("_465._tcp.smtp46", "_ourca-le-tlsa.example.org.")
	, CNAME("_587._tcp.smtp46", "_ourca-le-tlsa.example.org.")
	, CNAME("_1465._tcp.smtp46", "_ourca-le-tlsa.example.org.")
	, CNAME("_1587._tcp.smtp46", "_ourca-le-tlsa.example.org.")
	, CNAME("_465._tcp.smtp", "_ourca-le-tlsa.example.org.")
	, CNAME("_587._tcp.smtp", "_ourca-le-tlsa.example.org.")
	, CNAME("_1465._tcp.smtp", "_ourca-le-tlsa.example.org.")
	, CNAME("_1587._tcp.smtp", "_ourca-le-tlsa.example.org.")
	, CNAME("_143._tcp.imap46", "_ourca-le-tlsa.example.org.")
	, CNAME("_993._tcp.imap46", "_ourca-le-tlsa.example.org.")
	, CNAME("_143._tcp.imap", "_ourca-le-tlsa.example.org.")
	, CNAME("_993._tcp.imap", "_ourca-le-tlsa.example.org.")
	, CNAME("_4190._tcp.imap", "_ourca-le-tlsa.example.org.")
	, CNAME("www.security", "security.example.org.")
	, CNAME("www.security.ipv4", "security.ipv4.example.org.")
	, CNAME("www.security.ipv6", "security.ipv6.example.org.")
	, CNAME("_443._tcp.www.security", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.www.security.ipv4", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.www.security.ipv6", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.security", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.security.ipv4", "_ourca-le-tlsa.example.org.")
	, CNAME("_443._tcp.security.ipv6", "_ourca-le-tlsa.example.org.")
	, CNAME("_acme-challenge", "_acme-challenge.chat-acme.d.example.net.", TTL(15))
	, CNAME("_acme-challenge.xmpp", "_acme-challenge.xmpp.chat-acme.d.example.net.", TTL(15))
	, CNAME("_acme-challenge.chat", "_acme-challenge.chat.chat-acme.d.example.net.", TTL(15))
	, CNAME("_acme-challenge.conference", "_acme-challenge.conference.chat-acme.d.example.net.", TTL(15))
	, CNAME("_acme-challenge.proxy-chatfiles", "_acme-challenge.proxy-chatfiles.chat-acme.d.example.net.", TTL(15))
	, CNAME("_acme-challenge.pubsub.xmpp", "_acme-challenge.pubsub.xmpp.chat-acme.d.example.net.", TTL(15))
	, AAAA("imap", "2001:db8::48:4558:696d:6170")
	, A("imap", "192.0.2.25")
	, AAAA("smtp", "2001:db8::48:4558:736d:7470")
	, A("smtp", "192.0.2.25")
	, A("smtp46", "192.0.2.25")
	, AAAA("smtp46", "2001:db8::48:4558:736d:7470")
	, A("imap46", "192.0.2.25")
	, AAAA("imap46", "2001:db8::48:4558:696d:6170")
	, A("mx", "192.0.2.25")
	, AAAA("mx", "2001:db8::48:4558:736d:7470")
	, A("mx.ipv4", "192.0.2.25")
	, AAAA("mx.ipv6", "2001:db8::48:4558:736d:7470")
	, TXT("mx", "v=spf1 a include:_spflarge.example.net -all")
	, TXT("_mta-sts", "v=STSv1; id=20191231r1;")
	, TXT("mta-sts", "v=STSv1; id=20191231r1;")
	, A("mta-sts", "192.0.2.93")
	, AAAA("mta-sts", "2001:db8::48:4558:5345:5256")
	, AAAA("xmpp.ipv6", "2001:db8::f0ab:cdef:1234:f00f")
	, AAAA("xmpp-s2s.ipv6", "2001:db8::f0ab:cdef:1234:f00f")
	, A("xmpp", "203.0.113.175")
	, AAAA("xmpp", "2001:db8::f0ab:cdef:1234:f00f")
	, A("xmpp-s2s", "203.0.113.175")
	, AAAA("xmpp-s2s", "2001:db8::f0ab:cdef:1234:f00f")
	, CNAME("proxy-chatfiles", "xmpp.example.org.")
	, CNAME("fileproxy.xmpp", "xmpp.example.org.")
	, CNAME("conference", "xmpp-s2s.example.org.")
	, SRV("_xmpp-server._tcp.conference", 10, 2, 5269, "xmpp-s2s.example.org.")
	, CNAME("pubsub.xmpp", "xmpp-s2s.example.org.")
	, A("chat", "203.0.113.175")
	, AAAA("chat", "2001:db8::f0ab:cdef:1234:f00f")
	, CNAME("proxy-chatfiles.chat", "chat.example.org.")
	, CNAME("fileproxy.chat", "chat.example.org.")
	, CNAME("conference.chat", "chat.example.org.")
	, CNAME("pubsub.chat", "chat.example.org.")
	, SRV("_xmpp-server._tcp.conference", 10, 2, 5269, "chat.example.org.")
	, AAAA("auth", "2001:db8::48:4558:6175:7468")
	, AAAA("kpeople", "2001:db8::48:4558:6b70:706c")
	, AAAA("ocsp.security", "2001:db8::48:4558:6f63:7370")
	, AAAA("webauth", "2001:db8::48:4558:7765:6261")
	, A("news-feed", "192.0.2.93")
	, AAAA("news-feed", "2001:db8::48:4558:6e6e:7470")
	, CNAME("go", "abcdefghijklmn.cloudfront.net.")
	, A("foo", "192.0.2.200")
	, MX("gladys", 10, "mx.example.org.")
	, TXT("_adsp._domainkey.gladys", "dkim=all")
	, TXT("_dmarc.gladys", "v=DMARC1; p=none; sp=none; rua=mailto:dmarc-notify@example.org; ruf=mailto:dmarc-notify@example.org; adkim=s")
	, TXT("_report.gladys", "r=abuse-reports@example.org; rf=ARF; re=postmaster@example.org;")
	, TXT("_smtp._tls.gladys", "v=TLSRPTv1; rua=mailto:smtp-tls-reports@example.org")
	, TXT("_smtp-tlsrpt.gladys", "v=TLSRPTv1; rua=mailto:smtp-tls-reports@example.org")
	, MX("fred", 10, "mx.example.org.")
	, A("fred", "192.0.2.93")
	, AAAA("fred", "2001:db8::48:4558:5345:5256")
	, TXT("fred", "v=spf1 ip4:192.0.2.25 ip6:2001:db8::1:25 mx include:_spf.example.com ~all")
	, TXT("d201911._domainkey.fred", "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA8/OMUa3PnWh9LqXFVwlAgYDdTtbq3zTtTOSBmJq5yWauzXYcUuSmhW7CsV0QQlacCsQgJlwg9Nl1vO1TosAj5EKUCLTeSqjlWrM7KXKPx8FT71Q9H9wXX4MHUyGrqHFo0OPzcmtHwqcd8AD6MIvJHSRoAfiPPBp8Euc0wGnJZdGS75Hk+wA3MQ2/TlzP2eenyiFyqmUTAGOYsGC/tREsWPiegR/OVxNGlzTY6quHsuVK7UYtIyFnYx9PGWdl3b3p7VjQ5V0Rp+2CLtVrCuS6Zs+/3NhZdM7mdD0a9Jgxakwa1le5YmB5lHTGF7T8quy6TlKe9lMUIRNjqTHfSFz/MwIDAQAB")
	, TXT("d201911e2._domainkey.fred", "v=DKIM1; k=ed25519; p=rQNsV9YcPJn/WYI1EDLjNbN/VuX1Hqq/oe4htbnhv+A=")
	, TXT("d202003._domainkey.fred", "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvpnx7tnRxAnE/poIRbVb2i+f1uQCXWnBHzHurgEyZX0CmGaiJuCbr8SWOW2PoXq9YX8gIv2TS3uzwGv/4yA2yX9Z9zar1LeWUfGgMWLdCol9xfmWrI+6MUzxuwhw/mXwzigbI4bHoakh3ez/i3J9KPS85GfrOODqA1emR13f2pG8EzAcje+rwW2PtYjc0h+FMDpeLuPYyYszFbNlrkVUneesxnoz+o4x/s6P14ZoRqz5CR7u6G02HwnNaHads5Eto6FYYErUUTtFmgWuYabHxgLVGRdRQs6B5OBYT/3L2q/lAgmEgdy/QL+c0Psfj99/XQmO8fcM0scBzw2ukQzcUwIDAQAB")
	, TXT("d202003e2._domainkey.fred", "v=DKIM1; k=ed25519; p=0DAPp/IRLYFI/Z4YSgJRi4gr7xcu1/EfJ5mjVn10aAw=")
	, TXT("_adsp._domainkey.fred", "dkim=all")
	, TXT("_dmarc.fred", "v=DMARC1; p=none; sp=none; rua=mailto:dmarc-notify@example.org; ruf=mailto:dmarc-notify@example.org; adkim=s")
	, TXT("_report.fred", "r=abuse-reports@example.org; rf=ARF; re=postmaster@example.org;")
	, TXT("_smtp._tls.fred", "v=TLSRPTv1; rua=mailto:smtp-tls-reports@example.org")
	, TXT("_smtp-tlsrpt.fred", "v=TLSRPTv1; rua=mailto:smtp-tls-reports@example.org")
	, MX("mailtest", 10, "mx.example.org.")
	, TXT("d201911._domainkey.mailtest", "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo9xHnjHyhm1weA6FjOqM8LKVsklFt26HXWoe/0XCdmBG4i/UzQ7RiSgWO4kv7anPK6qf6rtL1xYsHufaRXG8yLsZxz+BbUP99eZvxZX78tMg4cGf+yU6uFxulCbOzsMy+8Cc3bbQTtIWYjyWBwnHdRRrCkQxjZ5KAd+x7ZB5qzqg2/eLJ7fCuNsr/xn0XTY6XYgug95e3h4CEW3Y+bkG81AMeJmT/hoVTcXvT/Gm6ZOUmx6faQWIHSW7qOR3VS6S75HOuclEUk0gt9r7OQHKl01sXh8g02SHRk8SUMEoNVayqplYZTFFF01Z192m7enmpp+St+HHUIT6jW/CAMCO3wIDAQAB")
	, TXT("d201911e2._domainkey.mailtest", "v=DKIM1; k=ed25519; p=afulDDnhaTzdqKQN0jtWV04eOhAcyBk3NCyVheOf53Y=")
	, TXT("d202003._domainkey.mailtest", "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAs2BTVZaVLvL3qZBPaF7tRR0SdOKe+hjcpQ5fqO48lEuYiyTb6lkn8DPjDK11gTN3au0Bm+y8KC7ITKSJosuJXytxt3wqc61Pwtmb/Cy7GzmOF1AuegydB3/88VbgHT5DZucHrh6+ValZk4Trkx+/1K26Uo+h2KL2n/Ldb1y91ATHujp8DqxAOhiZ7KNaS1okNRRB4/14jPufAbeiN8/iBPiY5Hl80KHmpjM+7vvjb5jiecZ1ZrVDj7eTES4pmVh2v1c106mZLieoqDPYaf/HVbCM4E4n1B6kjbboSOpANADIcqXxGJQ7Be7/Sk9f7KwRusrsMHXmBHgm4wPmwGVZ3QIDAQAB")
	, TXT("d202003e2._domainkey.mailtest", "v=DKIM1; k=ed25519; p=iqwH/hhozFdeo1xnuldr8KUi7O7g+DzmC+f0SYMKVDc=")
	, TXT("_adsp._domainkey.mailtest", "dkim=all")
	, TXT("_dmarc.mailtest", "v=DMARC1; p=none; sp=none; rua=mailto:dmarc-notify@example.org; ruf=mailto:dmarc-notify@example.org; adkim=s")
	, TXT("_report.mailtest", "r=abuse-reports@example.org; rf=ARF; re=postmaster@example.org;")
	, TXT("_smtp._tls.mailtest", "v=TLSRPTv1; rua=mailto:smtp-tls-reports@example.org")
	, TXT("_smtp-tlsrpt.mailtest", "v=TLSRPTv1; rua=mailto:smtp-tls-reports@example.org")
	, SRV("_pgpkey-http._tcp.sks", 0, 0, 0, ".")
	, SRV("_pgpkey-https._tcp.sks", 0, 0, 0, ".")
	, SRV("_hkp._tcp.sks", 0, 0, 0, ".")
	, SRV("_pgpkey-http._tcp.sks-peer", 0, 0, 0, ".")
	, SRV("_pgpkey-https._tcp.sks-peer", 0, 0, 0, ".")
	, SRV("_hkp._tcp.sks-peer", 0, 0, 0, ".")
	, NS("yoyo", "ns5.he.net.")
	, NS("yoyo", "ns4.he.net.")
	, NS("yoyo", "ns3.he.net.")
	, NS("yoyo", "ns2.he.net.")
	, NS("yoyo", "ns1.he.net.")
	, NS("khard", "ns-cloud-d1.googledomains.com.")
	, NS("khard", "ns-cloud-d2.googledomains.com.")
	, NS("khard", "ns-cloud-d3.googledomains.com.")
	, NS("khard", "ns-cloud-d4.googledomains.com.")
	, MX("realhost", 0, ".")
	, TXT("realhost", "v=spf1 -all")
	, TLSA("_25._tcp.realhost", 3, 0, 0, "0000000000000000000000000000000000000000000000000000000000000000")
	, CNAME("_fedcba9876543210fedcba9876543210.go", "_45678901234abcdef45678901234abcd.ggedgsdned.acm-validations.aws.")
	, CNAME("opqrstuvwxyz", "gv-abcdefghijklmn.dv.googlehosted.com.")
	, CNAME("zyxwvutsrqpo", "gv-nmlkjihgfedcba.dv.googlehosted.com.")
	, CNAME("0123456789abcdef0123456789abcdef", "verify.bing.com.")
)

