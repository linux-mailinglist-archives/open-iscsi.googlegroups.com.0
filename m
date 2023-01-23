Return-Path: <open-iscsi+bncBCAK5RFKQECRBWUHXGPAMGQET7JYC3Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D6D677639
	for <lists+open-iscsi@lfdr.de>; Mon, 23 Jan 2023 09:22:54 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id df6-20020a056214080600b00534fe2ad5a3sf5655671qvb.11
        for <lists+open-iscsi@lfdr.de>; Mon, 23 Jan 2023 00:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A55MIlZUpc6Eau1+UgzRxf5XIt/ubpX+VTHQ4zLz5aI=;
        b=oEAlOTJvwgLJSJJmJ9mNIoNpMVbniE2jQ6m37SfTg9XkRztFzW0md+Zlzj0urNT6Zm
         cvOV4Xe13mznBJF5cRL6o020qNg6ncejHR3akNbOcO1w6nRTa5ykBSpeG0ZDetuIEpxh
         aigeVqndRGoFw3ROhlrS+USStIHwhKjLgvTZdLk2i45lJ0wfmZdoRj3dss57nvGFGhNQ
         hzCb6XMWzzEUshuA6D5W0pAJvKkHod7M0HwCIQGq1nqmUQl3HcVCmvJ8E6WD8qrvuqsH
         22DhFw/ZpSzGVz3GeEn7Cbr8R+MdFHn4VFmtPfw9UF8+zqCrVO4fro2xXND7du8EutOy
         ojRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A55MIlZUpc6Eau1+UgzRxf5XIt/ubpX+VTHQ4zLz5aI=;
        b=ceDm1B6oyOmbRH53/Xj45by+4Trfkqopp7uoGISrtdFT49OnUChtm7jmXdcxJdpfsv
         nvozi982BPO58H9fUoG1gz7h4N8YtUJv0s9bS2X8a7aPNogJukl20NDmUgVzYldzORPb
         a5G8y+43nXnu6KSAPgxgTZGSpyPCsY9SB5ph/A6QNBFTDjmJp3ZdcJSdRzo6Kle4vqJG
         TNBKmURB6XK4+Ld1nyo22Yo2V9zz5TVI3PA1vuNc9sycvgIJJBZJR4ewIf54idttUYZV
         V88v7pNEhNysdq2TufUxptgKyKFoOPJUwti74bjcxCafI0tLkzBItqFz95JW6smIUsEG
         1FJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A55MIlZUpc6Eau1+UgzRxf5XIt/ubpX+VTHQ4zLz5aI=;
        b=TEX8O/906Vu5tATh5n/4BXbbHxJeuAJOmQAHTcPRbo2kf0g+6gSqyotlWk0CUuJ+mc
         FvJBIK9KIcJhuYwOAoJL8dKXPfSXwwnm8Vv6Ris4H9KOoPa02eHyLO6jCe/M0AYjjTY+
         qirfImPrSpvMNjSwXJaG/BmukOk+IJbNd9T6w2WIy9XipAC5e4ZbfyG1o0j2gqLCbrTl
         9rCSV89C80DaYt7VYwQ7TOrFbb3Ztay90b4BrA/PNLLh+ycZbNYMJtanTY917B/rujM5
         ViM2etrQABboHYbB0vcBxlDB/bLTgPSl3SDUmvJKlezMqXBAddI9M+uaoLcdplrZnVCC
         eZrg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2koU5U/0fe0My/BRz93IBMjS/hA1xn4aFQPDiFRJ1YTqtTywsAn0
	Rzti6cc6g/fGQB3uiqac/tI=
X-Google-Smtp-Source: AMrXdXuJV9odj2mEX97KHCC/GeYfwL65Rs6P9wlffA8dPf9nllLo1cMIY9lA5u71BM9VcpNoiOJmeg==
X-Received: by 2002:a05:620a:1451:b0:702:103e:c728 with SMTP id i17-20020a05620a145100b00702103ec728mr1622426qkl.220.1674462171797;
        Mon, 23 Jan 2023 00:22:51 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:1a89:b0:3b6:3272:8dce with SMTP id
 s9-20020a05622a1a8900b003b632728dcels8900994qtc.11.-pod-prod-gmail; Mon, 23
 Jan 2023 00:22:50 -0800 (PST)
X-Received: by 2002:a05:622a:6203:b0:3a6:905f:a39b with SMTP id hj3-20020a05622a620300b003a6905fa39bmr1006520qtb.642.1674462169985;
        Mon, 23 Jan 2023 00:22:49 -0800 (PST)
Date: Mon, 23 Jan 2023 00:22:49 -0800 (PST)
From: Forza <andelyd@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <49bb36a2-9cdb-444c-9ba4-69a947ef0d61n@googlegroups.com>
Subject: Kernel BUG: kernel NULL pointer dereference on Windows server
 connect/disconnect
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2574_614422522.1674462169316"
X-Original-Sender: andelyd@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_2574_614422522.1674462169316
Content-Type: multipart/alternative; 
	boundary="----=_Part_2575_609730076.1674462169316"

------=_Part_2575_609730076.1674462169316
Content-Type: text/plain; charset="UTF-8"

Hi!
I have an issue with spontaneous reboots of my ISCSI target server. It 
seems to happen especially often when Windows Server 2016 clients reboot, 
but I can't say for sure it happens every time either.

The target is using a fileio backing store ontop of a BTRFS filesystem. I 
have write-back enabled on this target (but it happens even with write 
caching disabled).

I am running Alpine Linux. The issue has happened since first installed 
about a year ago. It is at least happeneing on kernels 5.15.60+ and 6.1.4, 
6.1.6.


I managed to capture the following trace using pstore:

<6>[   69.123671] RPC: Registered named UNIX socket transport module.
<6>[   69.123674] RPC: Registered udp transport module.
<6>[   69.123675] RPC: Registered tcp transport module.
<6>[   69.123675] RPC: Registered tcp NFSv4.1 backchannel transport module.
<6>[   70.281192] NFSD: Using UMH upcall client tracking operations.
<6>[   70.281199] NFSD: starting 90-second grace period (net f0000000)
<6>[   75.683777] Rounding down aligned max_sectors from 4294967295 to 
4294967288
<4>[   76.014381] ignoring deprecated emulate_dpo attribute
<4>[   76.014497] ignoring deprecated emulate_fua_read attribute
<4>[   76.019775] dev[000000004a04ffbe]: Backstore name 'sesoco3092-export' 
is too long for INQUIRY_MODEL, truncating to 15 characters
<3>[   76.813023] bond0: (slave igb0): speed changed to 0 on port 1
<6>[   76.868842] bond0: (slave igb0): link status definitely down, 
disabling slave
<6>[   76.868849] bond0: active interface up!
<3>[   78.912829] bond0: (slave igb1): speed changed to 0 on port 2
<6>[   78.982125] bond0: (slave igb1): link status definitely down, 
disabling slave
<6>[   78.982149] bond0: now running without any active interface!
<6>[   80.332786] igb 0000:03:00.0 igb0: igb: igb0 NIC Link is Up 1000 Mbps 
Full Duplex, Flow Control: RX
<6>[   80.545683] bond0: (slave igb0): link status definitely up, 1000 Mbps 
full duplex
<6>[   80.545691] bond0: active interface up!
<6>[   82.449424] igb 0000:04:00.0 igb1: igb: igb1 NIC Link is Up 1000 Mbps 
Full Duplex, Flow Control: RX
<6>[   82.622345] bond0: (slave igb1): link status definitely up, 1000 Mbps 
full duplex
<4>[ 7428.832735] hrtimer: interrupt took 7712 ns
<6>[ 8364.650898] ice 0000:01:00.0 ice0: NIC Link is up 25 Gbps Full 
Duplex, Requested FEC: RS-FEC, Negotiated FEC: RS-FEC, Autoneg Advertised: 
Off, Autoneg Negotiated: False, Flow Control: None
<6>[ 8364.651003] IPv6: ADDRCONF(NETDEV_CHANGE): ice0: link becomes ready
<6>[11218.918482] wireguard: WireGuard 1.0.0 loaded. See www.wireguard.com 
for information.
<6>[11218.918484] wireguard: Copyright (C) 2015-2019 Jason A. Donenfeld 
<Jason@zx2c4.com>. All Rights Reserved.
<3>[154888.236235] Did not receive response to NOPIN on CID: 1, failing 
connection for I_T Nexus 
iqn.1991-05.com.microsoft:srv,i,0x400001370001,iqn.2022-02.com.example.srv04:srv,t,0x01
<3>[154908.716136] Time2Retain timer expired for SID: 1, cleaning up iSCSI 
session.
<1>[154908.716177] BUG: kernel NULL pointer dereference, address: 
0000000000000140
<1>[154908.717023] #PF: supervisor write access in kernel mode
<1>[154908.717842] #PF: error_code(0x0002) - not-present page
<6>[154908.718667] PGD 0 P4D 0 
<4>[154908.719486] Oops: 0002 [#1] PREEMPT SMP PTI
<4>[154908.720289] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 6.1.3-0-lts 
#1-Alpine
<4>[154908.721089] Hardware name: Supermicro Super Server/X11SCL-F, BIOS 
1.9 09/21/2022
<4>[154908.721888] RIP: 0010:sbitmap_queue_clear+0x3a/0xa0
<4>[154908.722667] Code: 65 48 8b 04 25 28 00 00 00 48 89 44 24 08 31 c0 8b 
4f 04 ba ff ff ff ff 89 f0 d3 e2 d3 e8 f7 d2 48 c1 e0 07 48 03 47 10 21 f2 
<f0> 48 0f ab 50 40 c7 44 24 04 01 00 00 00 48 8d 74 24 04 48 89 df
<4>[154908.724376] RSP: 0018:ffffa6e400003d48 EFLAGS: 00010202
<4>[154908.725249] RAX: 0000000000000100 RBX: ffff8ddc43039428 RCX: 
0000000000000005
<4>[154908.726137] RDX: 000000000000000b RSI: 000000000000004b RDI: 
ffff8ddc43039428
<4>[154908.727030] RBP: 000000000000004b R08: 0000000000000000 R09: 
0000000000000000
<4>[154908.727921] R10: 0000000000000000 R11: 0000000000000000 R12: 
0000000000000000
<4>[154908.728812] R13: ffff8ddc43039380 R14: ffff8ddc49015370 R15: 
ffff8ddc490157e0
<4>[154908.729715] FS:  0000000000000000(0000) GS:ffff8df9aec00000(0000) 
knlGS:0000000000000000
<4>[154908.730638] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[154908.731569] CR2: 0000000000000140 CR3: 00000002dc20a005 CR4: 
00000000003706f0
<4>[154908.732526] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
0000000000000000
<4>[154908.733487] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 
0000000000000400
<4>[154908.734453] Call Trace:
<4>[154908.735411]  <IRQ>
<4>[154908.736371]  target_release_cmd_kref+0xd1/0x1f0 [target_core_mod]
<4>[154908.737425]  transport_generic_free_cmd+0xd1/0x180 [target_core_mod]
<4>[154908.738485]  iscsit_free_cmd+0x53/0xd0 [iscsi_target_mod]
<4>[154908.739536]  iscsit_free_connection_recovery_entries+0x29d/0x320 
[iscsi_target_mod]
<4>[154908.740595]  ? iscsit_check_post_dataout+0x440/0x440 
[iscsi_target_mod]
<4>[154908.741662]  iscsit_close_session+0x13a/0x140 [iscsi_target_mod]
<4>[154908.742749]  ? iscsit_check_post_dataout+0x440/0x440 
[iscsi_target_mod]
<4>[154908.743848]  call_timer_fn+0x24/0x140
<4>[154908.744923]  __run_timers+0x231/0x2c0
<4>[154908.746007]  run_timer_softirq+0x3b/0x80
<4>[154908.746891]  __do_softirq+0xfa/0x32e
<4>[154908.747607]  __irq_exit_rcu+0xf0/0x150
<4>[154908.748320]  sysvec_apic_timer_interrupt+0x9e/0xc0
<4>[154908.749037]  </IRQ>
<4>[154908.749747]  <TASK>
<4>[154908.750457]  asm_sysvec_apic_timer_interrupt+0x16/0x20
<4>[154908.751189] RIP: 0010:cpuidle_enter_state+0xde/0x430
<4>[154908.751811] Code: 00 00 31 ff e8 f3 8e 9b ff 45 84 ff 74 16 9c 58 0f 
1f 40 00 f6 c4 02 0f 85 33 03 00 00 31 ff e8 98 6a a2 ff fb 0f 1f 44 00 00 
<45> 85 f6 0f 88 93 01 00 00 49 63 d6 48 8d 04 52 48 8d 04 82 49 8d
<4>[154908.752966] RSP: 0018:ffffffff94203e38 EFLAGS: 00000246
<4>[154908.753560] RAX: 0000000000000000 RBX: ffff8df9aec36738 RCX: 
0000000000000000
<4>[154908.754162] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 
0000000000000000
<4>[154908.754765] RBP: 0000000000000002 R08: 0000000000000000 R09: 
0000000000000000
<4>[154908.755365] R10: 0000000000000000 R11: 0000000000000000 R12: 
ffffffff942e1660
<4>[154908.755962] R13: 00008ce37eff2c4e R14: 0000000000000002 R15: 
0000000000000000
<4>[154908.756545]  ? cpuidle_enter_state+0xbd/0x430
<4>[154908.757011]  cpuidle_enter+0x29/0x40
<4>[154908.757474]  do_idle+0x216/0x2c0
<4>[154908.757935]  cpu_startup_entry+0x19/0x20
<4>[154908.758393]  rest_init+0xcb/0xd0
<4>[154908.758848]  arch_call_rest_init+0xa/0x47
<4>[154908.759299]  start_kernel+0xacd/0xb25
<4>[154908.759744]  secondary_startup_64_no_verify+0xce/0xdb
<4>[154908.760181]  </TASK>
<4>[154908.760591] Modules linked in: wireguard curve25519_x86_64 
libchacha20poly1305 chacha_x86_64 poly1305_x86_64 ip6_udp_tunnel udp_tunnel 
libcurve25519_generic libchacha nf_conntrack_netlink nf_conntrack 
nf_defrag_ipv6 nf_defrag_ipv4 nfnetlink_acct nfnetlink rpcsec_gss_krb5 
sch_fq_codel target_core_user uio target_core_pscsi target_core_file 
target_core_iblock iscsi_target_mod target_core_mod configfs nfsd 
auth_rpcgss lockd grace sunrpc xxhash_generic nls_utf8 nls_cp437 vfat fat 
bonding irdma coretemp intel_rapl_msr intel_rapl_common i40e ib_uverbs 
ib_core ipv6 intel_tcc_cooling x86_pkg_temp_thermal iTCO_wdt 
intel_powerclamp intel_pmc_bxt i2c_designware_platform iTCO_vendor_support 
i2c_designware_core kvm_intel kvm irqbypass crct10dif_pclmul 
ghash_clmulni_intel sha512_ssse3 aesni_intel crypto_simd cryptd rapl ast 
drm_vram_helper intel_cstate nvme pcspkr efi_pstore wmi_bmof drm_ttm_helper 
nvme_core i2c_i801 igb ttm i2c_smbus nvme_common hwmon i2c_algo_bit dca 
mei_me intel_lpss_pci
<4>[154908.760674]  intel_lpss idma64 mei virt_dma joydev mousedev 
input_leds intel_pch_thermal mfd_core ipmi_ssif ice ie31200_edac thermal 
fan hed evdev acpi_ipmi ipmi_si ipmi_devintf ipmi_msghandler 
pinctrl_cannonlake acpi_tad button efivarfs hid_generic usbhid hid ses 
enclosure video crc32_pclmul xhci_pci xhci_pci_renesas xhci_hcd mpt3sas 
raid_class scsi_transport_sas ahci libahci libata wmi simpledrm 
drm_shmem_helper drm_kms_helper cfbfillrect syscopyarea cfbimgblt 
sysfillrect sysimgblt fb_sys_fops cfbcopyarea drm i2c_core 
drm_panel_orientation_quirks agpgart loop btrfs libcrc32c crc32c_generic 
crc32c_intel xor raid6_pq usb_storage usbcore usb_common sd_mod t10_pi 
crc64_rocksoft crc64 scsi_mod scsi_common
<4>[154908.766444] CR2: 0000000000000140
<4>[154908.766821] ---[ end trace 0000000000000000 ]---

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/49bb36a2-9cdb-444c-9ba4-69a947ef0d61n%40googlegroups.com.

------=_Part_2575_609730076.1674462169316
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!<div>I have an issue with spontaneous reboots of my ISCSI target server.=
 It seems to happen especially often when Windows Server 2016 clients reboo=
t, but I can't say for sure it happens every time either.</div><div><br /><=
/div><div>The target is using a fileio backing store ontop of a BTRFS files=
ystem. I have write-back enabled on this target (but it happens even with w=
rite caching disabled).</div><div><br /></div><div>I am running Alpine Linu=
x. The issue has happened since first installed about a year ago. It is at =
least happeneing on kernels 5.15.60+ and 6.1.4, 6.1.6.</div><div><br /></di=
v><div><br /></div><div>I managed to capture the following trace using psto=
re:</div><div><br /></div><div>&lt;6&gt;[ =C2=A0 69.123671] RPC: Registered=
 named UNIX socket transport module.<br />&lt;6&gt;[ =C2=A0 69.123674] RPC:=
 Registered udp transport module.<br />&lt;6&gt;[ =C2=A0 69.123675] RPC: Re=
gistered tcp transport module.<br />&lt;6&gt;[ =C2=A0 69.123675] RPC: Regis=
tered tcp NFSv4.1 backchannel transport module.<br />&lt;6&gt;[ =C2=A0 70.2=
81192] NFSD: Using UMH upcall client tracking operations.<br />&lt;6&gt;[ =
=C2=A0 70.281199] NFSD: starting 90-second grace period (net f0000000)<br /=
>&lt;6&gt;[ =C2=A0 75.683777] Rounding down aligned max_sectors from 429496=
7295 to 4294967288<br />&lt;4&gt;[ =C2=A0 76.014381] ignoring deprecated em=
ulate_dpo attribute<br />&lt;4&gt;[ =C2=A0 76.014497] ignoring deprecated e=
mulate_fua_read attribute<br />&lt;4&gt;[ =C2=A0 76.019775] dev[000000004a0=
4ffbe]: Backstore name 'sesoco3092-export' is too long for INQUIRY_MODEL, t=
runcating to 15 characters<br />&lt;3&gt;[ =C2=A0 76.813023] bond0: (slave =
igb0): speed changed to 0 on port 1<br />&lt;6&gt;[ =C2=A0 76.868842] bond0=
: (slave igb0): link status definitely down, disabling slave<br />&lt;6&gt;=
[ =C2=A0 76.868849] bond0: active interface up!<br />&lt;3&gt;[ =C2=A0 78.9=
12829] bond0: (slave igb1): speed changed to 0 on port 2<br />&lt;6&gt;[ =
=C2=A0 78.982125] bond0: (slave igb1): link status definitely down, disabli=
ng slave<br />&lt;6&gt;[ =C2=A0 78.982149] bond0: now running without any a=
ctive interface!<br />&lt;6&gt;[ =C2=A0 80.332786] igb 0000:03:00.0 igb0: i=
gb: igb0 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: RX<br />&lt;6&=
gt;[ =C2=A0 80.545683] bond0: (slave igb0): link status definitely up, 1000=
 Mbps full duplex<br />&lt;6&gt;[ =C2=A0 80.545691] bond0: active interface=
 up!<br />&lt;6&gt;[ =C2=A0 82.449424] igb 0000:04:00.0 igb1: igb: igb1 NIC=
 Link is Up 1000 Mbps Full Duplex, Flow Control: RX<br />&lt;6&gt;[ =C2=A0 =
82.622345] bond0: (slave igb1): link status definitely up, 1000 Mbps full d=
uplex<br />&lt;4&gt;[ 7428.832735] hrtimer: interrupt took 7712 ns<br />&lt=
;6&gt;[ 8364.650898] ice 0000:01:00.0 ice0: NIC Link is up 25 Gbps Full Dup=
lex, Requested FEC: RS-FEC, Negotiated FEC: RS-FEC, Autoneg Advertised: Off=
, Autoneg Negotiated: False, Flow Control: None<br />&lt;6&gt;[ 8364.651003=
] IPv6: ADDRCONF(NETDEV_CHANGE): ice0: link becomes ready<br />&lt;6&gt;[11=
218.918482] wireguard: WireGuard 1.0.0 loaded. See www.wireguard.com for in=
formation.<br />&lt;6&gt;[11218.918484] wireguard: Copyright (C) 2015-2019 =
Jason A. Donenfeld &lt;Jason@zx2c4.com&gt;. All Rights Reserved.<br />&lt;3=
&gt;[154888.236235] Did not receive response to NOPIN on CID: 1, failing co=
nnection for I_T Nexus iqn.1991-05.com.microsoft:srv,i,0x400001370001,iqn.2=
022-02.com.example.srv04:srv,t,0x01<br />&lt;3&gt;[154908.716136] Time2Reta=
in timer expired for SID: 1, cleaning up iSCSI session.<br />&lt;1&gt;[1549=
08.716177] BUG: kernel NULL pointer dereference, address: 0000000000000140<=
br />&lt;1&gt;[154908.717023] #PF: supervisor write access in kernel mode<b=
r />&lt;1&gt;[154908.717842] #PF: error_code(0x0002) - not-present page<br =
/>&lt;6&gt;[154908.718667] PGD 0 P4D 0 <br />&lt;4&gt;[154908.719486] Oops:=
 0002 [#1] PREEMPT SMP PTI<br />&lt;4&gt;[154908.720289] CPU: 0 PID: 0 Comm=
: swapper/0 Not tainted 6.1.3-0-lts #1-Alpine<br />&lt;4&gt;[154908.721089]=
 Hardware name: Supermicro Super Server/X11SCL-F, BIOS 1.9 09/21/2022<br />=
&lt;4&gt;[154908.721888] RIP: 0010:sbitmap_queue_clear+0x3a/0xa0<br />&lt;4=
&gt;[154908.722667] Code: 65 48 8b 04 25 28 00 00 00 48 89 44 24 08 31 c0 8=
b 4f 04 ba ff ff ff ff 89 f0 d3 e2 d3 e8 f7 d2 48 c1 e0 07 48 03 47 10 21 f=
2 &lt;f0&gt; 48 0f ab 50 40 c7 44 24 04 01 00 00 00 48 8d 74 24 04 48 89 df=
<br />&lt;4&gt;[154908.724376] RSP: 0018:ffffa6e400003d48 EFLAGS: 00010202<=
br />&lt;4&gt;[154908.725249] RAX: 0000000000000100 RBX: ffff8ddc43039428 R=
CX: 0000000000000005<br />&lt;4&gt;[154908.726137] RDX: 000000000000000b RS=
I: 000000000000004b RDI: ffff8ddc43039428<br />&lt;4&gt;[154908.727030] RBP=
: 000000000000004b R08: 0000000000000000 R09: 0000000000000000<br />&lt;4&g=
t;[154908.727921] R10: 0000000000000000 R11: 0000000000000000 R12: 00000000=
00000000<br />&lt;4&gt;[154908.728812] R13: ffff8ddc43039380 R14: ffff8ddc4=
9015370 R15: ffff8ddc490157e0<br />&lt;4&gt;[154908.729715] FS: =C2=A000000=
00000000000(0000) GS:ffff8df9aec00000(0000) knlGS:0000000000000000<br />&lt=
;4&gt;[154908.730638] CS: =C2=A00010 DS: 0000 ES: 0000 CR0: 000000008005003=
3<br />&lt;4&gt;[154908.731569] CR2: 0000000000000140 CR3: 00000002dc20a005=
 CR4: 00000000003706f0<br />&lt;4&gt;[154908.732526] DR0: 0000000000000000 =
DR1: 0000000000000000 DR2: 0000000000000000<br />&lt;4&gt;[154908.733487] D=
R3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400<br />&lt;4=
&gt;[154908.734453] Call Trace:<br />&lt;4&gt;[154908.735411] =C2=A0&lt;IRQ=
&gt;<br />&lt;4&gt;[154908.736371] =C2=A0target_release_cmd_kref+0xd1/0x1f0=
 [target_core_mod]<br />&lt;4&gt;[154908.737425] =C2=A0transport_generic_fr=
ee_cmd+0xd1/0x180 [target_core_mod]<br />&lt;4&gt;[154908.738485] =C2=A0isc=
sit_free_cmd+0x53/0xd0 [iscsi_target_mod]<br />&lt;4&gt;[154908.739536] =C2=
=A0iscsit_free_connection_recovery_entries+0x29d/0x320 [iscsi_target_mod]<b=
r />&lt;4&gt;[154908.740595] =C2=A0? iscsit_check_post_dataout+0x440/0x440 =
[iscsi_target_mod]<br />&lt;4&gt;[154908.741662] =C2=A0iscsit_close_session=
+0x13a/0x140 [iscsi_target_mod]<br />&lt;4&gt;[154908.742749] =C2=A0? iscsi=
t_check_post_dataout+0x440/0x440 [iscsi_target_mod]<br />&lt;4&gt;[154908.7=
43848] =C2=A0call_timer_fn+0x24/0x140<br />&lt;4&gt;[154908.744923] =C2=A0_=
_run_timers+0x231/0x2c0<br />&lt;4&gt;[154908.746007] =C2=A0run_timer_softi=
rq+0x3b/0x80<br />&lt;4&gt;[154908.746891] =C2=A0__do_softirq+0xfa/0x32e<br=
 />&lt;4&gt;[154908.747607] =C2=A0__irq_exit_rcu+0xf0/0x150<br />&lt;4&gt;[=
154908.748320] =C2=A0sysvec_apic_timer_interrupt+0x9e/0xc0<br />&lt;4&gt;[1=
54908.749037] =C2=A0&lt;/IRQ&gt;<br />&lt;4&gt;[154908.749747] =C2=A0&lt;TA=
SK&gt;<br />&lt;4&gt;[154908.750457] =C2=A0asm_sysvec_apic_timer_interrupt+=
0x16/0x20<br />&lt;4&gt;[154908.751189] RIP: 0010:cpuidle_enter_state+0xde/=
0x430<br />&lt;4&gt;[154908.751811] Code: 00 00 31 ff e8 f3 8e 9b ff 45 84 =
ff 74 16 9c 58 0f 1f 40 00 f6 c4 02 0f 85 33 03 00 00 31 ff e8 98 6a a2 ff =
fb 0f 1f 44 00 00 &lt;45&gt; 85 f6 0f 88 93 01 00 00 49 63 d6 48 8d 04 52 4=
8 8d 04 82 49 8d<br />&lt;4&gt;[154908.752966] RSP: 0018:ffffffff94203e38 E=
FLAGS: 00000246<br />&lt;4&gt;[154908.753560] RAX: 0000000000000000 RBX: ff=
ff8df9aec36738 RCX: 0000000000000000<br />&lt;4&gt;[154908.754162] RDX: 000=
0000000000000 RSI: 0000000000000000 RDI: 0000000000000000<br />&lt;4&gt;[15=
4908.754765] RBP: 0000000000000002 R08: 0000000000000000 R09: 0000000000000=
000<br />&lt;4&gt;[154908.755365] R10: 0000000000000000 R11: 00000000000000=
00 R12: ffffffff942e1660<br />&lt;4&gt;[154908.755962] R13: 00008ce37eff2c4=
e R14: 0000000000000002 R15: 0000000000000000<br />&lt;4&gt;[154908.756545]=
 =C2=A0? cpuidle_enter_state+0xbd/0x430<br />&lt;4&gt;[154908.757011] =C2=
=A0cpuidle_enter+0x29/0x40<br />&lt;4&gt;[154908.757474] =C2=A0do_idle+0x21=
6/0x2c0<br />&lt;4&gt;[154908.757935] =C2=A0cpu_startup_entry+0x19/0x20<br =
/>&lt;4&gt;[154908.758393] =C2=A0rest_init+0xcb/0xd0<br />&lt;4&gt;[154908.=
758848] =C2=A0arch_call_rest_init+0xa/0x47<br />&lt;4&gt;[154908.759299] =
=C2=A0start_kernel+0xacd/0xb25<br />&lt;4&gt;[154908.759744] =C2=A0secondar=
y_startup_64_no_verify+0xce/0xdb<br />&lt;4&gt;[154908.760181] =C2=A0&lt;/T=
ASK&gt;<br />&lt;4&gt;[154908.760591] Modules linked in: wireguard curve255=
19_x86_64 libchacha20poly1305 chacha_x86_64 poly1305_x86_64 ip6_udp_tunnel =
udp_tunnel libcurve25519_generic libchacha nf_conntrack_netlink nf_conntrac=
k nf_defrag_ipv6 nf_defrag_ipv4 nfnetlink_acct nfnetlink rpcsec_gss_krb5 sc=
h_fq_codel target_core_user uio target_core_pscsi target_core_file target_c=
ore_iblock iscsi_target_mod target_core_mod configfs nfsd auth_rpcgss lockd=
 grace sunrpc xxhash_generic nls_utf8 nls_cp437 vfat fat bonding irdma core=
temp intel_rapl_msr intel_rapl_common i40e ib_uverbs ib_core ipv6 intel_tcc=
_cooling x86_pkg_temp_thermal iTCO_wdt intel_powerclamp intel_pmc_bxt i2c_d=
esignware_platform iTCO_vendor_support i2c_designware_core kvm_intel kvm ir=
qbypass crct10dif_pclmul ghash_clmulni_intel sha512_ssse3 aesni_intel crypt=
o_simd cryptd rapl ast drm_vram_helper intel_cstate nvme pcspkr efi_pstore =
wmi_bmof drm_ttm_helper nvme_core i2c_i801 igb ttm i2c_smbus nvme_common hw=
mon i2c_algo_bit dca mei_me intel_lpss_pci<br />&lt;4&gt;[154908.760674] =
=C2=A0intel_lpss idma64 mei virt_dma joydev mousedev input_leds intel_pch_t=
hermal mfd_core ipmi_ssif ice ie31200_edac thermal fan hed evdev acpi_ipmi =
ipmi_si ipmi_devintf ipmi_msghandler pinctrl_cannonlake acpi_tad button efi=
varfs hid_generic usbhid hid ses enclosure video crc32_pclmul xhci_pci xhci=
_pci_renesas xhci_hcd mpt3sas raid_class scsi_transport_sas ahci libahci li=
bata wmi simpledrm drm_shmem_helper drm_kms_helper cfbfillrect syscopyarea =
cfbimgblt sysfillrect sysimgblt fb_sys_fops cfbcopyarea drm i2c_core drm_pa=
nel_orientation_quirks agpgart loop btrfs libcrc32c crc32c_generic crc32c_i=
ntel xor raid6_pq usb_storage usbcore usb_common sd_mod t10_pi crc64_rockso=
ft crc64 scsi_mod scsi_common<br />&lt;4&gt;[154908.766444] CR2: 0000000000=
000140<br />&lt;4&gt;[154908.766821] ---[ end trace 0000000000000000 ]---<b=
r /></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/49bb36a2-9cdb-444c-9ba4-69a947ef0d61n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/49bb36a2-9cdb-444c-9ba4-69a947ef0d61n%40googlegroups.com</a>.=
<br />

------=_Part_2575_609730076.1674462169316--

------=_Part_2574_614422522.1674462169316--
