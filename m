Return-Path: <open-iscsi+bncBCAK5RFKQECRBXUBYSPAMGQEWVJPNVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 743B367AF6A
	for <lists+open-iscsi@lfdr.de>; Wed, 25 Jan 2023 11:13:53 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id q26-20020ac8735a000000b003b63165d87csf7356417qtp.11
        for <lists+open-iscsi@lfdr.de>; Wed, 25 Jan 2023 02:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=fFW9+GaTw17AH99zogj40EocLfAGIfF5TFXyVQcP/80=;
        b=JZOFTywlmTJxKfv4xiaipDEhf6oTEbneFhCpR3tEgx9s7/iGmod2a+YZqS5bWKooWG
         zisQ5CcOf/yBfKk7VBz/Nec5w8Vj0YazwoZjuUIE6vbeomKyOVV6CifaL85ZXouXoEDT
         0C+vJcaK33+e96ZEWX+YypvUNyGs+rFn6YqIl0yVnjZp6s/tq/+50wR8gULw9/Mo6LFQ
         9fyTIWh78tqOxbVZHKg8WCCNlxX8HNqfsQe/FD0OM0w2hld77VtyOUYM3s4abEpxrxkW
         MFrYG29/0lMVjeFE5uFSh/xoay6g1oFZ/fzwQ2svg7qd9MgNGRK3ECoe1jT7Xn11F7pd
         V1Ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fFW9+GaTw17AH99zogj40EocLfAGIfF5TFXyVQcP/80=;
        b=OXdCRXSchFpJGzC8eqh/69RkUgBXK+5mk5TT9uKIf9Hf3PR8BlClvRTiT9SVZTOtyw
         2rnBev1kpVoJCqkzB0dxPw2f3RST8eCeP8rfmcDMnpFmuq11i25hwSU8O7r10oWv8mq+
         j0f1eVFAqtVJOIZr1bJYMVnFh+TBK3YB+BfvXRBYbrFVIcKZRO3g70tf2XwvZjl4dr3u
         vcrIlYXZ33XPR1J8t3YoMJntY94MI1+k0fqnLxKlPj2zbf9aAYTwECF57dA8aPFcLSEP
         ZNkiCRySfgvDm5tvR1aQx+Mp3xwU4h/9FfwaWM+21l7CHGv9fBE1hm9vARVDSYg+i3Wt
         rg6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fFW9+GaTw17AH99zogj40EocLfAGIfF5TFXyVQcP/80=;
        b=P5IWmn6lssss8IIPm+7gzJw0VSrzJrjiqYtTBNQnuYaLY6cGzsgZXMbo+XCigTKa0z
         1pe3y1X6SGlOVcZerQGGZRlJrID+Aul/f1oyLgJ2XQj1S66yOOQkXZycM3TxxhNWtbcQ
         JdZngAS44/r4DYOQDQJA005MmFImHnG8CM/Wh0B3OiKVgYDYxUO+CmgFaB5j9fXket/S
         +1MLmf17+QkpxsXUHcQbDIr9Tx6uuVRwWj2HfRE+9AoiMfJC9/BTP2qidCRpXNutGc83
         RoFvgOmzgyKe1PkJRB4c2iFjVLdjrLbMWkvVeHc3jbT9/vl+G5SLe8IWx70hGrERHQEC
         1Bqw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2ko+G6UCoe+zXjtBqidAAF55I+kybDWMVE7HGzGBZvt3Ni+GbIhe
	Dn8NZIiZZcYtwyHCIVrVs3c=
X-Google-Smtp-Source: AMrXdXvnMdHPS+0VyNdq5Nva+xSRQ37FT0IPSaEWdlNDsevKp6rPcyFHPNVlWP3sow4tLm4bXto20w==
X-Received: by 2002:a05:6214:5845:b0:535:56ea:c7b2 with SMTP id ml5-20020a056214584500b0053556eac7b2mr1207186qvb.49.1674641632212;
        Wed, 25 Jan 2023 02:13:52 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:5d61:0:b0:532:149f:9c2e with SMTP id fn1-20020ad45d61000000b00532149f9c2els2922741qvb.3.-pod-prod-gmail;
 Wed, 25 Jan 2023 02:13:50 -0800 (PST)
X-Received: by 2002:a0c:e7ca:0:b0:537:680d:17c9 with SMTP id c10-20020a0ce7ca000000b00537680d17c9mr286688qvo.58.1674641630210;
        Wed, 25 Jan 2023 02:13:50 -0800 (PST)
Date: Wed, 25 Jan 2023 02:13:49 -0800 (PST)
From: Forza <andelyd@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <85461319-a808-4a6c-8947-a7aa947f133bn@googlegroups.com>
In-Reply-To: <d17c54d7-a83f-4d70-bfb5-d6c656caf8c0n@googlegroups.com>
References: <49bb36a2-9cdb-444c-9ba4-69a947ef0d61n@googlegroups.com>
 <2a284a99-fef6-45b2-9370-42cccdb1de89n@googlegroups.com>
 <d17c54d7-a83f-4d70-bfb5-d6c656caf8c0n@googlegroups.com>
Subject: Re: Kernel BUG: kernel NULL pointer dereference on Windows server
 connect/disconnect
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_560_625448913.1674641629453"
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

------=_Part_560_625448913.1674641629453
Content-Type: multipart/alternative; 
	boundary="----=_Part_561_704299063.1674641629453"

------=_Part_561_704299063.1674641629453
Content-Type: text/plain; charset="UTF-8"

There is now a patch  for this issue, which is caused by a "use-after-free" 
situation.
https://marc.info/?l=target-devel&m=167463560822293&w=2


On Wednesday, 25 January 2023 at 06:53:01 UTC+1 Forza wrote:

> Thanks for the feedback. I have posted to the target-devel mailing list 
> with some more information about distro etc. Hopefully we can get to the 
> root of this elusive issue there.
>
> On Tuesday, 24 January 2023 at 19:33:27 UTC+1 The Lee-Man wrote:
>
>> This is a mailing list for open-iscsi, the iSCSI initiator. Your issues 
>> seems to be with LIO, the in-kernel target code.
>>
>> I suggest the target development kernel mailing list: 
>> target...@vger.kernel.org
>>
>> It would help if, when you post there, you include your distribution. 
>> Also, is there any other way to reproduce it, other than using a MS 
>> initiator (so that others might reproduce it)?
>>
>> I use LIO (targetcli) targets regularly and haven't seen this issue.
>>
>> On Monday, January 23, 2023 at 12:22:49 AM UTC-8 Forza wrote:
>>
>>> Hi!
>>> I have an issue with spontaneous reboots of my ISCSI target server. It 
>>> seems to happen especially often when Windows Server 2016 clients reboot, 
>>> but I can't say for sure it happens every time either.
>>>
>>> The target is using a fileio backing store ontop of a BTRFS filesystem. 
>>> I have write-back enabled on this target (but it happens even with write 
>>> caching disabled).
>>>
>>> I am running Alpine Linux. The issue has happened since first installed 
>>> about a year ago. It is at least happeneing on kernels 5.15.60+ and 6.1.4, 
>>> 6.1.6.
>>>
>>>
>>> I managed to capture the following trace using pstore:
>>>
>>> <6>[   69.123671] RPC: Registered named UNIX socket transport module.
>>> <6>[   69.123674] RPC: Registered udp transport module.
>>> <6>[   69.123675] RPC: Registered tcp transport module.
>>> <6>[   69.123675] RPC: Registered tcp NFSv4.1 backchannel transport 
>>> module.
>>> <6>[   70.281192] NFSD: Using UMH upcall client tracking operations.
>>> <6>[   70.281199] NFSD: starting 90-second grace period (net f0000000)
>>> <6>[   75.683777] Rounding down aligned max_sectors from 4294967295 to 
>>> 4294967288
>>> <4>[   76.014381] ignoring deprecated emulate_dpo attribute
>>> <4>[   76.014497] ignoring deprecated emulate_fua_read attribute
>>> <4>[   76.019775] dev[000000004a04ffbe]: Backstore name 
>>> 'sesoco3092-export' is too long for INQUIRY_MODEL, truncating to 15 
>>> characters
>>> <3>[   76.813023] bond0: (slave igb0): speed changed to 0 on port 1
>>> <6>[   76.868842] bond0: (slave igb0): link status definitely down, 
>>> disabling slave
>>> <6>[   76.868849] bond0: active interface up!
>>> <3>[   78.912829] bond0: (slave igb1): speed changed to 0 on port 2
>>> <6>[   78.982125] bond0: (slave igb1): link status definitely down, 
>>> disabling slave
>>> <6>[   78.982149] bond0: now running without any active interface!
>>> <6>[   80.332786] igb 0000:03:00.0 igb0: igb: igb0 NIC Link is Up 1000 
>>> Mbps Full Duplex, Flow Control: RX
>>> <6>[   80.545683] bond0: (slave igb0): link status definitely up, 1000 
>>> Mbps full duplex
>>> <6>[   80.545691] bond0: active interface up!
>>> <6>[   82.449424] igb 0000:04:00.0 igb1: igb: igb1 NIC Link is Up 1000 
>>> Mbps Full Duplex, Flow Control: RX
>>> <6>[   82.622345] bond0: (slave igb1): link status definitely up, 1000 
>>> Mbps full duplex
>>> <4>[ 7428.832735] hrtimer: interrupt took 7712 ns
>>> <6>[ 8364.650898] ice 0000:01:00.0 ice0: NIC Link is up 25 Gbps Full 
>>> Duplex, Requested FEC: RS-FEC, Negotiated FEC: RS-FEC, Autoneg Advertised: 
>>> Off, Autoneg Negotiated: False, Flow Control: None
>>> <6>[ 8364.651003] IPv6: ADDRCONF(NETDEV_CHANGE): ice0: link becomes ready
>>> <6>[11218.918482] wireguard: WireGuard 1.0.0 loaded. See 
>>> www.wireguard.com for information.
>>> <6>[11218.918484] wireguard: Copyright (C) 2015-2019 Jason A. Donenfeld <
>>> Ja...@zx2c4.com>. All Rights Reserved.
>>> <3>[154888.236235] Did not receive response to NOPIN on CID: 1, failing 
>>> connection for I_T Nexus 
>>> iqn.1991-05.com.microsoft:srv,i,0x400001370001,iqn.2022-02.com.example.srv04:srv,t,0x01
>>> <3>[154908.716136] Time2Retain timer expired for SID: 1, cleaning up 
>>> iSCSI session.
>>> <1>[154908.716177] BUG: kernel NULL pointer dereference, address: 
>>> 0000000000000140
>>> <1>[154908.717023] #PF: supervisor write access in kernel mode
>>> <1>[154908.717842] #PF: error_code(0x0002) - not-present page
>>> <6>[154908.718667] PGD 0 P4D 0 
>>> <4>[154908.719486] Oops: 0002 [#1] PREEMPT SMP PTI
>>> <4>[154908.720289] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 6.1.3-0-lts 
>>> #1-Alpine
>>> <4>[154908.721089] Hardware name: Supermicro Super Server/X11SCL-F, BIOS 
>>> 1.9 09/21/2022
>>> <4>[154908.721888] RIP: 0010:sbitmap_queue_clear+0x3a/0xa0
>>> <4>[154908.722667] Code: 65 48 8b 04 25 28 00 00 00 48 89 44 24 08 31 c0 
>>> 8b 4f 04 ba ff ff ff ff 89 f0 d3 e2 d3 e8 f7 d2 48 c1 e0 07 48 03 47 10 21 
>>> f2 <f0> 48 0f ab 50 40 c7 44 24 04 01 00 00 00 48 8d 74 24 04 48 89 df
>>> <4>[154908.724376] RSP: 0018:ffffa6e400003d48 EFLAGS: 00010202
>>> <4>[154908.725249] RAX: 0000000000000100 RBX: ffff8ddc43039428 RCX: 
>>> 0000000000000005
>>> <4>[154908.726137] RDX: 000000000000000b RSI: 000000000000004b RDI: 
>>> ffff8ddc43039428
>>> <4>[154908.727030] RBP: 000000000000004b R08: 0000000000000000 R09: 
>>> 0000000000000000
>>> <4>[154908.727921] R10: 0000000000000000 R11: 0000000000000000 R12: 
>>> 0000000000000000
>>> <4>[154908.728812] R13: ffff8ddc43039380 R14: ffff8ddc49015370 R15: 
>>> ffff8ddc490157e0
>>> <4>[154908.729715] FS:  0000000000000000(0000) GS:ffff8df9aec00000(0000) 
>>> knlGS:0000000000000000
>>> <4>[154908.730638] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> <4>[154908.731569] CR2: 0000000000000140 CR3: 00000002dc20a005 CR4: 
>>> 00000000003706f0
>>> <4>[154908.732526] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
>>> 0000000000000000
>>> <4>[154908.733487] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 
>>> 0000000000000400
>>> <4>[154908.734453] Call Trace:
>>> <4>[154908.735411]  <IRQ>
>>> <4>[154908.736371]  target_release_cmd_kref+0xd1/0x1f0 [target_core_mod]
>>> <4>[154908.737425]  transport_generic_free_cmd+0xd1/0x180 
>>> [target_core_mod]
>>> <4>[154908.738485]  iscsit_free_cmd+0x53/0xd0 [iscsi_target_mod]
>>> <4>[154908.739536]  iscsit_free_connection_recovery_entries+0x29d/0x320 
>>> [iscsi_target_mod]
>>> <4>[154908.740595]  ? iscsit_check_post_dataout+0x440/0x440 
>>> [iscsi_target_mod]
>>> <4>[154908.741662]  iscsit_close_session+0x13a/0x140 [iscsi_target_mod]
>>> <4>[154908.742749]  ? iscsit_check_post_dataout+0x440/0x440 
>>> [iscsi_target_mod]
>>> <4>[154908.743848]  call_timer_fn+0x24/0x140
>>> <4>[154908.744923]  __run_timers+0x231/0x2c0
>>> <4>[154908.746007]  run_timer_softirq+0x3b/0x80
>>> <4>[154908.746891]  __do_softirq+0xfa/0x32e
>>> <4>[154908.747607]  __irq_exit_rcu+0xf0/0x150
>>> <4>[154908.748320]  sysvec_apic_timer_interrupt+0x9e/0xc0
>>> <4>[154908.749037]  </IRQ>
>>> <4>[154908.749747]  <TASK>
>>> <4>[154908.750457]  asm_sysvec_apic_timer_interrupt+0x16/0x20
>>> <4>[154908.751189] RIP: 0010:cpuidle_enter_state+0xde/0x430
>>> <4>[154908.751811] Code: 00 00 31 ff e8 f3 8e 9b ff 45 84 ff 74 16 9c 58 
>>> 0f 1f 40 00 f6 c4 02 0f 85 33 03 00 00 31 ff e8 98 6a a2 ff fb 0f 1f 44 00 
>>> 00 <45> 85 f6 0f 88 93 01 00 00 49 63 d6 48 8d 04 52 48 8d 04 82 49 8d
>>> <4>[154908.752966] RSP: 0018:ffffffff94203e38 EFLAGS: 00000246
>>> <4>[154908.753560] RAX: 0000000000000000 RBX: ffff8df9aec36738 RCX: 
>>> 0000000000000000
>>> <4>[154908.754162] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 
>>> 0000000000000000
>>> <4>[154908.754765] RBP: 0000000000000002 R08: 0000000000000000 R09: 
>>> 0000000000000000
>>> <4>[154908.755365] R10: 0000000000000000 R11: 0000000000000000 R12: 
>>> ffffffff942e1660
>>> <4>[154908.755962] R13: 00008ce37eff2c4e R14: 0000000000000002 R15: 
>>> 0000000000000000
>>> <4>[154908.756545]  ? cpuidle_enter_state+0xbd/0x430
>>> <4>[154908.757011]  cpuidle_enter+0x29/0x40
>>> <4>[154908.757474]  do_idle+0x216/0x2c0
>>> <4>[154908.757935]  cpu_startup_entry+0x19/0x20
>>> <4>[154908.758393]  rest_init+0xcb/0xd0
>>> <4>[154908.758848]  arch_call_rest_init+0xa/0x47
>>> <4>[154908.759299]  start_kernel+0xacd/0xb25
>>> <4>[154908.759744]  secondary_startup_64_no_verify+0xce/0xdb
>>> <4>[154908.760181]  </TASK>
>>> <4>[154908.760591] Modules linked in: wireguard curve25519_x86_64 
>>> libchacha20poly1305 chacha_x86_64 poly1305_x86_64 ip6_udp_tunnel udp_tunnel 
>>> libcurve25519_generic libchacha nf_conntrack_netlink nf_conntrack 
>>> nf_defrag_ipv6 nf_defrag_ipv4 nfnetlink_acct nfnetlink rpcsec_gss_krb5 
>>> sch_fq_codel target_core_user uio target_core_pscsi target_core_file 
>>> target_core_iblock iscsi_target_mod target_core_mod configfs nfsd 
>>> auth_rpcgss lockd grace sunrpc xxhash_generic nls_utf8 nls_cp437 vfat fat 
>>> bonding irdma coretemp intel_rapl_msr intel_rapl_common i40e ib_uverbs 
>>> ib_core ipv6 intel_tcc_cooling x86_pkg_temp_thermal iTCO_wdt 
>>> intel_powerclamp intel_pmc_bxt i2c_designware_platform iTCO_vendor_support 
>>> i2c_designware_core kvm_intel kvm irqbypass crct10dif_pclmul 
>>> ghash_clmulni_intel sha512_ssse3 aesni_intel crypto_simd cryptd rapl ast 
>>> drm_vram_helper intel_cstate nvme pcspkr efi_pstore wmi_bmof drm_ttm_helper 
>>> nvme_core i2c_i801 igb ttm i2c_smbus nvme_common hwmon i2c_algo_bit dca 
>>> mei_me intel_lpss_pci
>>> <4>[154908.760674]  intel_lpss idma64 mei virt_dma joydev mousedev 
>>> input_leds intel_pch_thermal mfd_core ipmi_ssif ice ie31200_edac thermal 
>>> fan hed evdev acpi_ipmi ipmi_si ipmi_devintf ipmi_msghandler 
>>> pinctrl_cannonlake acpi_tad button efivarfs hid_generic usbhid hid ses 
>>> enclosure video crc32_pclmul xhci_pci xhci_pci_renesas xhci_hcd mpt3sas 
>>> raid_class scsi_transport_sas ahci libahci libata wmi simpledrm 
>>> drm_shmem_helper drm_kms_helper cfbfillrect syscopyarea cfbimgblt 
>>> sysfillrect sysimgblt fb_sys_fops cfbcopyarea drm i2c_core 
>>> drm_panel_orientation_quirks agpgart loop btrfs libcrc32c crc32c_generic 
>>> crc32c_intel xor raid6_pq usb_storage usbcore usb_common sd_mod t10_pi 
>>> crc64_rocksoft crc64 scsi_mod scsi_common
>>> <4>[154908.766444] CR2: 0000000000000140
>>> <4>[154908.766821] ---[ end trace 0000000000000000 ]---
>>>
>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85461319-a808-4a6c-8947-a7aa947f133bn%40googlegroups.com.

------=_Part_561_704299063.1674641629453
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is now a patch=C2=A0 for this issue, which is caused by a "use-after-=
free" situation.<div>https://marc.info/?l=3Dtarget-devel&amp;m=3D1674635608=
22293&amp;w=3D2</div><div><br /><br /></div><div class=3D"gmail_quote"><div=
 dir=3D"auto" class=3D"gmail_attr">On Wednesday, 25 January 2023 at 06:53:0=
1 UTC+1 Forza wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"m=
argin: 0 0 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left=
: 1ex;">Thanks for the feedback. I have posted to the target-devel mailing =
list with some more information about distro etc. Hopefully we can get to t=
he root of this elusive issue there.<br><br><div class=3D"gmail_quote"><div=
 dir=3D"auto" class=3D"gmail_attr">On Tuesday, 24 January 2023 at 19:33:27 =
UTC+1 The Lee-Man wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div>This is a mailing list for open-iscsi, the iSCSI initiator. Your =
issues seems to be with LIO, the in-kernel target code.</div><div><br></div=
><div>I suggest the target development kernel mailing list: <a rel=3D"nofol=
low">target...@vger.kernel.org</a></div><div><br></div><div>It would help i=
f, when you post there, you include your distribution. Also, is there any o=
ther way to reproduce it, other than using a MS initiator (so that others m=
ight reproduce it)?</div><div><br></div><div>I use LIO (targetcli) targets =
regularly and haven&#39;t seen this issue.<br></div><br><div class=3D"gmail=
_quote"><div dir=3D"auto" class=3D"gmail_attr">On Monday, January 23, 2023 =
at 12:22:49 AM UTC-8 Forza wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi!<div>I have an issue with spontaneous reboots of my ISCSI ta=
rget server. It seems to happen especially often when Windows Server 2016 c=
lients reboot, but I can&#39;t say for sure it happens every time either.</=
div><div><br></div><div>The target is using a fileio backing store ontop of=
 a BTRFS filesystem. I have write-back enabled on this target (but it happe=
ns even with write caching disabled).</div><div><br></div><div>I am running=
 Alpine Linux. The issue has happened since first installed about a year ag=
o. It is at least happeneing on kernels 5.15.60+ and 6.1.4, 6.1.6.</div><di=
v><br></div><div><br></div><div>I managed to capture the following trace us=
ing pstore:</div><div><br></div><div>&lt;6&gt;[ =C2=A0 69.123671] RPC: Regi=
stered named UNIX socket transport module.<br>&lt;6&gt;[ =C2=A0 69.123674] =
RPC: Registered udp transport module.<br>&lt;6&gt;[ =C2=A0 69.123675] RPC: =
Registered tcp transport module.<br>&lt;6&gt;[ =C2=A0 69.123675] RPC: Regis=
tered tcp NFSv4.1 backchannel transport module.<br>&lt;6&gt;[ =C2=A0 70.281=
192] NFSD: Using UMH upcall client tracking operations.<br>&lt;6&gt;[ =C2=
=A0 70.281199] NFSD: starting 90-second grace period (net f0000000)<br>&lt;=
6&gt;[ =C2=A0 75.683777] Rounding down aligned max_sectors from 4294967295 =
to 4294967288<br>&lt;4&gt;[ =C2=A0 76.014381] ignoring deprecated emulate_d=
po attribute<br>&lt;4&gt;[ =C2=A0 76.014497] ignoring deprecated emulate_fu=
a_read attribute<br>&lt;4&gt;[ =C2=A0 76.019775] dev[000000004a04ffbe]: Bac=
kstore name &#39;sesoco3092-export&#39; is too long for INQUIRY_MODEL, trun=
cating to 15 characters<br>&lt;3&gt;[ =C2=A0 76.813023] bond0: (slave igb0)=
: speed changed to 0 on port 1<br>&lt;6&gt;[ =C2=A0 76.868842] bond0: (slav=
e igb0): link status definitely down, disabling slave<br>&lt;6&gt;[ =C2=A0 =
76.868849] bond0: active interface up!<br>&lt;3&gt;[ =C2=A0 78.912829] bond=
0: (slave igb1): speed changed to 0 on port 2<br>&lt;6&gt;[ =C2=A0 78.98212=
5] bond0: (slave igb1): link status definitely down, disabling slave<br>&lt=
;6&gt;[ =C2=A0 78.982149] bond0: now running without any active interface!<=
br>&lt;6&gt;[ =C2=A0 80.332786] igb 0000:03:00.0 igb0: igb: igb0 NIC Link i=
s Up 1000 Mbps Full Duplex, Flow Control: RX<br>&lt;6&gt;[ =C2=A0 80.545683=
] bond0: (slave igb0): link status definitely up, 1000 Mbps full duplex<br>=
&lt;6&gt;[ =C2=A0 80.545691] bond0: active interface up!<br>&lt;6&gt;[ =C2=
=A0 82.449424] igb 0000:04:00.0 igb1: igb: igb1 NIC Link is Up 1000 Mbps Fu=
ll Duplex, Flow Control: RX<br>&lt;6&gt;[ =C2=A0 82.622345] bond0: (slave i=
gb1): link status definitely up, 1000 Mbps full duplex<br>&lt;4&gt;[ 7428.8=
32735] hrtimer: interrupt took 7712 ns<br>&lt;6&gt;[ 8364.650898] ice 0000:=
01:00.0 ice0: NIC Link is up 25 Gbps Full Duplex, Requested FEC: RS-FEC, Ne=
gotiated FEC: RS-FEC, Autoneg Advertised: Off, Autoneg Negotiated: False, F=
low Control: None<br>&lt;6&gt;[ 8364.651003] IPv6: ADDRCONF(NETDEV_CHANGE):=
 ice0: link becomes ready<br>&lt;6&gt;[11218.918482] wireguard: WireGuard 1=
.0.0 loaded. See <a href=3D"http://www.wireguard.com" rel=3D"nofollow" targ=
et=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den-GB=
&amp;q=3Dhttp://www.wireguard.com&amp;source=3Dgmail&amp;ust=3D167472799503=
9000&amp;usg=3DAOvVaw0orWFihT18Y46ZWY6ecWGM">www.wireguard.com</a> for info=
rmation.<br>&lt;6&gt;[11218.918484] wireguard: Copyright (C) 2015-2019 Jaso=
n A. Donenfeld &lt;<a rel=3D"nofollow">Ja...@zx2c4.com</a>&gt;. All Rights =
Reserved.<br>&lt;3&gt;[154888.236235] Did not receive response to NOPIN on =
CID: 1, failing connection for I_T Nexus iqn.1991-05.com.microsoft:srv,i,0x=
400001370001,iqn.2022-02.com.example.srv04:srv,t,0x01<br>&lt;3&gt;[154908.7=
16136] Time2Retain timer expired for SID: 1, cleaning up iSCSI session.<br>=
&lt;1&gt;[154908.716177] BUG: kernel NULL pointer dereference, address: 000=
0000000000140<br>&lt;1&gt;[154908.717023] #PF: supervisor write access in k=
ernel mode<br>&lt;1&gt;[154908.717842] #PF: error_code(0x0002) - not-presen=
t page<br>&lt;6&gt;[154908.718667] PGD 0 P4D 0 <br>&lt;4&gt;[154908.719486]=
 Oops: 0002 [#1] PREEMPT SMP PTI<br>&lt;4&gt;[154908.720289] CPU: 0 PID: 0 =
Comm: swapper/0 Not tainted 6.1.3-0-lts #1-Alpine<br>&lt;4&gt;[154908.72108=
9] Hardware name: Supermicro Super Server/X11SCL-F, BIOS 1.9 09/21/2022<br>=
&lt;4&gt;[154908.721888] RIP: 0010:sbitmap_queue_clear+0x3a/0xa0<br>&lt;4&g=
t;[154908.722667] Code: 65 48 8b 04 25 28 00 00 00 48 89 44 24 08 31 c0 8b =
4f 04 ba ff ff ff ff 89 f0 d3 e2 d3 e8 f7 d2 48 c1 e0 07 48 03 47 10 21 f2 =
&lt;f0&gt; 48 0f ab 50 40 c7 44 24 04 01 00 00 00 48 8d 74 24 04 48 89 df<b=
r>&lt;4&gt;[154908.724376] RSP: 0018:ffffa6e400003d48 EFLAGS: 00010202<br>&=
lt;4&gt;[154908.725249] RAX: 0000000000000100 RBX: ffff8ddc43039428 RCX: 00=
00000000000005<br>&lt;4&gt;[154908.726137] RDX: 000000000000000b RSI: 00000=
0000000004b RDI: ffff8ddc43039428<br>&lt;4&gt;[154908.727030] RBP: 00000000=
0000004b R08: 0000000000000000 R09: 0000000000000000<br>&lt;4&gt;[154908.72=
7921] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000<br>=
&lt;4&gt;[154908.728812] R13: ffff8ddc43039380 R14: ffff8ddc49015370 R15: f=
fff8ddc490157e0<br>&lt;4&gt;[154908.729715] FS: =C2=A00000000000000000(0000=
) GS:ffff8df9aec00000(0000) knlGS:0000000000000000<br>&lt;4&gt;[154908.7306=
38] CS: =C2=A00010 DS: 0000 ES: 0000 CR0: 0000000080050033<br>&lt;4&gt;[154=
908.731569] CR2: 0000000000000140 CR3: 00000002dc20a005 CR4: 00000000003706=
f0<br>&lt;4&gt;[154908.732526] DR0: 0000000000000000 DR1: 0000000000000000 =
DR2: 0000000000000000<br>&lt;4&gt;[154908.733487] DR3: 0000000000000000 DR6=
: 00000000fffe0ff0 DR7: 0000000000000400<br>&lt;4&gt;[154908.734453] Call T=
race:<br>&lt;4&gt;[154908.735411] =C2=A0&lt;IRQ&gt;<br>&lt;4&gt;[154908.736=
371] =C2=A0target_release_cmd_kref+0xd1/0x1f0 [target_core_mod]<br>&lt;4&gt=
;[154908.737425] =C2=A0transport_generic_free_cmd+0xd1/0x180 [target_core_m=
od]<br>&lt;4&gt;[154908.738485] =C2=A0iscsit_free_cmd+0x53/0xd0 [iscsi_targ=
et_mod]<br>&lt;4&gt;[154908.739536] =C2=A0iscsit_free_connection_recovery_e=
ntries+0x29d/0x320 [iscsi_target_mod]<br>&lt;4&gt;[154908.740595] =C2=A0? i=
scsit_check_post_dataout+0x440/0x440 [iscsi_target_mod]<br>&lt;4&gt;[154908=
.741662] =C2=A0iscsit_close_session+0x13a/0x140 [iscsi_target_mod]<br>&lt;4=
&gt;[154908.742749] =C2=A0? iscsit_check_post_dataout+0x440/0x440 [iscsi_ta=
rget_mod]<br>&lt;4&gt;[154908.743848] =C2=A0call_timer_fn+0x24/0x140<br>&lt=
;4&gt;[154908.744923] =C2=A0__run_timers+0x231/0x2c0<br>&lt;4&gt;[154908.74=
6007] =C2=A0run_timer_softirq+0x3b/0x80<br>&lt;4&gt;[154908.746891] =C2=A0_=
_do_softirq+0xfa/0x32e<br>&lt;4&gt;[154908.747607] =C2=A0__irq_exit_rcu+0xf=
0/0x150<br>&lt;4&gt;[154908.748320] =C2=A0sysvec_apic_timer_interrupt+0x9e/=
0xc0<br>&lt;4&gt;[154908.749037] =C2=A0&lt;/IRQ&gt;<br>&lt;4&gt;[154908.749=
747] =C2=A0&lt;TASK&gt;<br>&lt;4&gt;[154908.750457] =C2=A0asm_sysvec_apic_t=
imer_interrupt+0x16/0x20<br>&lt;4&gt;[154908.751189] RIP: 0010:cpuidle_ente=
r_state+0xde/0x430<br>&lt;4&gt;[154908.751811] Code: 00 00 31 ff e8 f3 8e 9=
b ff 45 84 ff 74 16 9c 58 0f 1f 40 00 f6 c4 02 0f 85 33 03 00 00 31 ff e8 9=
8 6a a2 ff fb 0f 1f 44 00 00 &lt;45&gt; 85 f6 0f 88 93 01 00 00 49 63 d6 48=
 8d 04 52 48 8d 04 82 49 8d<br>&lt;4&gt;[154908.752966] RSP: 0018:ffffffff9=
4203e38 EFLAGS: 00000246<br>&lt;4&gt;[154908.753560] RAX: 0000000000000000 =
RBX: ffff8df9aec36738 RCX: 0000000000000000<br>&lt;4&gt;[154908.754162] RDX=
: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000<br>&lt;4&gt;=
[154908.754765] RBP: 0000000000000002 R08: 0000000000000000 R09: 0000000000=
000000<br>&lt;4&gt;[154908.755365] R10: 0000000000000000 R11: 0000000000000=
000 R12: ffffffff942e1660<br>&lt;4&gt;[154908.755962] R13: 00008ce37eff2c4e=
 R14: 0000000000000002 R15: 0000000000000000<br>&lt;4&gt;[154908.756545] =
=C2=A0? cpuidle_enter_state+0xbd/0x430<br>&lt;4&gt;[154908.757011] =C2=A0cp=
uidle_enter+0x29/0x40<br>&lt;4&gt;[154908.757474] =C2=A0do_idle+0x216/0x2c0=
<br>&lt;4&gt;[154908.757935] =C2=A0cpu_startup_entry+0x19/0x20<br>&lt;4&gt;=
[154908.758393] =C2=A0rest_init+0xcb/0xd0<br>&lt;4&gt;[154908.758848] =C2=
=A0arch_call_rest_init+0xa/0x47<br>&lt;4&gt;[154908.759299] =C2=A0start_ker=
nel+0xacd/0xb25<br>&lt;4&gt;[154908.759744] =C2=A0secondary_startup_64_no_v=
erify+0xce/0xdb<br>&lt;4&gt;[154908.760181] =C2=A0&lt;/TASK&gt;<br>&lt;4&gt=
;[154908.760591] Modules linked in: wireguard curve25519_x86_64 libchacha20=
poly1305 chacha_x86_64 poly1305_x86_64 ip6_udp_tunnel udp_tunnel libcurve25=
519_generic libchacha nf_conntrack_netlink nf_conntrack nf_defrag_ipv6 nf_d=
efrag_ipv4 nfnetlink_acct nfnetlink rpcsec_gss_krb5 sch_fq_codel target_cor=
e_user uio target_core_pscsi target_core_file target_core_iblock iscsi_targ=
et_mod target_core_mod configfs nfsd auth_rpcgss lockd grace sunrpc xxhash_=
generic nls_utf8 nls_cp437 vfat fat bonding irdma coretemp intel_rapl_msr i=
ntel_rapl_common i40e ib_uverbs ib_core ipv6 intel_tcc_cooling x86_pkg_temp=
_thermal iTCO_wdt intel_powerclamp intel_pmc_bxt i2c_designware_platform iT=
CO_vendor_support i2c_designware_core kvm_intel kvm irqbypass crct10dif_pcl=
mul ghash_clmulni_intel sha512_ssse3 aesni_intel crypto_simd cryptd rapl as=
t drm_vram_helper intel_cstate nvme pcspkr efi_pstore wmi_bmof drm_ttm_help=
er nvme_core i2c_i801 igb ttm i2c_smbus nvme_common hwmon i2c_algo_bit dca =
mei_me intel_lpss_pci<br>&lt;4&gt;[154908.760674] =C2=A0intel_lpss idma64 m=
ei virt_dma joydev mousedev input_leds intel_pch_thermal mfd_core ipmi_ssif=
 ice ie31200_edac thermal fan hed evdev acpi_ipmi ipmi_si ipmi_devintf ipmi=
_msghandler pinctrl_cannonlake acpi_tad button efivarfs hid_generic usbhid =
hid ses enclosure video crc32_pclmul xhci_pci xhci_pci_renesas xhci_hcd mpt=
3sas raid_class scsi_transport_sas ahci libahci libata wmi simpledrm drm_sh=
mem_helper drm_kms_helper cfbfillrect syscopyarea cfbimgblt sysfillrect sys=
imgblt fb_sys_fops cfbcopyarea drm i2c_core drm_panel_orientation_quirks ag=
pgart loop btrfs libcrc32c crc32c_generic crc32c_intel xor raid6_pq usb_sto=
rage usbcore usb_common sd_mod t10_pi crc64_rocksoft crc64 scsi_mod scsi_co=
mmon<br>&lt;4&gt;[154908.766444] CR2: 0000000000000140<br>&lt;4&gt;[154908.=
766821] ---[ end trace 0000000000000000 ]---<br></div></blockquote></div></=
blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/85461319-a808-4a6c-8947-a7aa947f133bn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/85461319-a808-4a6c-8947-a7aa947f133bn%40googlegroups.com</a>.=
<br />

------=_Part_561_704299063.1674641629453--

------=_Part_560_625448913.1674641629453--
