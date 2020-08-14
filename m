Return-Path: <open-iscsi+bncBCYYJNMLYYMRB44Z3L4QKGQEXLXYSNI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F74244A2B
	for <lists+open-iscsi@lfdr.de>; Fri, 14 Aug 2020 15:09:09 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id jm22sf6074321pjb.5
        for <lists+open-iscsi@lfdr.de>; Fri, 14 Aug 2020 06:09:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597410548; cv=pass;
        d=google.com; s=arc-20160816;
        b=KdRz8sb7AM1Rl3hXtLWmeTPYvBdVhl3t4YVmmmLBHpNbKQStkMOjPK9abOAN7KHG1y
         5TPdSsNlC1rPiIDlorlLWK/0C+WEvJb11bZ25QC3bEnQcx6KFlW6phBO/xiWxyTrICvh
         g1tC5KMvufOp+53jSE3QIbUbfg+ZoKDac7Zb/bQSxT719vUTcA0MKAWaq3j12+WlmJoE
         OaWREI4wiwJFmeVcaIGPhT8UI6cRcYe0caQu1orwybvo1N/CddqrnmMOWrzjHaH/YrSc
         JlSGNgtoNb/tOd40CMGLDNqi59oHLnkB6M+/22h09KCxcK6KoQY1XeYVtLRETeolHxUr
         B7gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature;
        bh=+vJUa4HYcQ++mzthySKpxC3TrU+iLs2ad2pQrETRBMI=;
        b=SOmz/SWRMSBXNgOXfibp7TUl4ty4K8hVfljMA3q8vKP7RiD8WflCZtZkaDy0gGDsaP
         h63eb2j3bOlFR7VtEo5N8lJSlNXp/LGEY13IUFfUPp35B9ppQEkgT/YFTgwB2RwE4UHI
         yR8xfDIP83C7I0wtpG3uH7FHt03gCfdImevGV89VBSKPZzr+VPk5qvxN4ngf5K6BgPEe
         vOGazuuBY9RQke5zBexlp5QBllf8BrYgiIt6JusJ8P9wWxOzXh3jK4/wrQhQOiBHVfqw
         6NOvrwBeXWrkaRcDfKL+NA77Qls2qS8VEvtPR2js8e/NQ7H2yGWuN2XlDUix4iMoo5A3
         jZ+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+vJUa4HYcQ++mzthySKpxC3TrU+iLs2ad2pQrETRBMI=;
        b=ADyD3wLPSEO+H0iaWHi2qhHtLBfW9lknMyvJH59y3Y2RnAxjXUVcVNLavUdDFFqfNO
         dYGhBQyQjGaxi9jFRayvzhSFwgWvIefBGND81Ngjp1V65DhyV/QbVWMsMZgOSlenUD2z
         fRbt/px+qL+Zip1whxQzHnhq7e2fYBc81pxEKWdlFzsFwnPXwRqFLTJukX4/q7NarxEN
         fb+Dhr6KJweEtDqW6p49WEpfHhA1N/C+0AFA5BTaBr+306+ETFZ02N5Aa/65AYZeX4qa
         5miCTUqi+pArmDPKhhqeTSg/YU3FqcR/aoV7cYsvKl6t0AX3wSpkNyKmgYrsTtLHIEaj
         yQLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+vJUa4HYcQ++mzthySKpxC3TrU+iLs2ad2pQrETRBMI=;
        b=hSg00T5g9B/kTx46K1zOchcQ0FXbjwbG99F7s+trAcebiJQX3BB1LgogO9zrvptT/F
         8F3upgADOhrP2djUGlQTCgAg6AjAVQlAgY3qKVz7GG37/BLB+7zXNt3ywZuYgpxZUsbk
         2tyGEzrljguaM7lSvmhhvGovpxirNw8upZ4xHiJ7MKepqUCKAUGJqvkz5xvRtukY5nVo
         yTWVNRir0Wb3/EPXYCz1L6ZnRL4DlP5m8H7u+25kPGyiAhzhQY2y0GZI3n8v0NlWufwz
         Y8FOVRk6eZ6T/+l1rLykGUl+dR4cW6PrppCijOnfmAL7CCn0dqQ/VXa0Mtnx9+gxlTH8
         X5fQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530fae8t9aEttyGAAvgsrdm+R/+JKkQdCt/hT/LfP8EzrDpgqJxi
	i3I67a26vSz0pfmIzkuPXqY=
X-Google-Smtp-Source: ABdhPJwkpKABK0V9HOVWshCNtzF2+sGEpml/HbClyNjc4ZED++4vBlbSxsLAR4MaoUXQgjIqAUEHhA==
X-Received: by 2002:a63:6b01:: with SMTP id g1mr1626755pgc.192.1597410547888;
        Fri, 14 Aug 2020 06:09:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:6d86:: with SMTP id i128ls2511748pgc.6.gmail; Fri, 14
 Aug 2020 06:09:07 -0700 (PDT)
X-Received: by 2002:aa7:968b:: with SMTP id f11mr1755509pfk.63.1597410547402;
        Fri, 14 Aug 2020 06:09:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597410547; cv=none;
        d=google.com; s=arc-20160816;
        b=zI+H85aIzHHZh/qxzr3RBvUbWAvrGMps0Puglh1YjcNfbwNZaUJVzzpoqqQ9iyog7y
         GuHKn2JApPuqDPkjS+LE0GWwSj3dNjXBe9+B09R9SkyztbuT94f1oPNILZVm/ZQVgW/A
         fuXF92y0SGPV+XMnCLaUFF2CqZbxPYAoZXOig0sch6d96Kwcac0yBRFYK39uMWIMtC0w
         PSPNSzE14no49JkDuW86wYOff41M18E37B/L1k2dzLeqwTJx2SQypA5GrpP2tsOniM3x
         JXzwKLO9PWVJ9S+h69CyW+KUM0YSBzwCw9w9hXDHIScqovA4BULJPMm/3vlx46dR293g
         P/EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date;
        bh=Ml4a597dJlnUre6jhasgnxXJzh4SowyxhG0o/uLRQec=;
        b=0Q1KjszubZnd4J1VBd0ZNqvQXEKnRgk7VPLGiy+HYwq0xYLEOIGVLUUsRTObDTkMDf
         O6Hqw1URS35UMGDYoUnaYWCsYOlf+cQIjjDHsJv7Qjovk/lP0m+6SacUExmGe1kiQm6n
         kHcySYb4ziv6Rgs11GPm0tmJDSSO/IfQbDkqDflNPXbc4MnCETmkxCFT/SxNiTY5VmtD
         1bSvJ2skwomETl+utQLv4/gYvu7O1qSsNLqCF24p/UIW5WMNUlKKuKMnT4rE6un3iEj6
         IQ+Ed2VIpoSI7h9gynsw9SltHyoMwPusHfvKcgE0dNH6fzTImyMtythAMExCiGxGzoAl
         flkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id l26si465461pfe.2.2020.08.14.06.09.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Aug 2020 06:09:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from callcc.thunk.org (pool-108-49-65-20.bstnma.fios.verizon.net [108.49.65.20])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 07ED9581005276
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Aug 2020 09:09:05 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id CD965420137; Fri, 14 Aug 2020 09:09:04 -0400 (EDT)
Date: Fri, 14 Aug 2020 09:09:04 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: open-iscsi@googlegroups.com
Subject: BUG, lockdep warnings during iSCSI login?
Message-ID: <20200814130904.GA3597@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

Hi, I'm wondering if this is a known issue?  I'm running 5.8.0-rc6.

Thanks,

					- Ted

[  227.673796] scsi host0: iSCSI Initiator over TCP/IP
[  227.876468] scsi 0:0:0:1: Direct-Access     SYNOLOGY iSCSI Storage    4.0  PQ: 0 ANSI: 5
[  227.934517] sd 0:0:0:1: Attached scsi generic sg0 type 0
[  228.036150] sd 0:0:0:1: [sda] 1073741824 512-byte logical blocks: (550 GB/512 GiB)
[  228.047359] sd 0:0:0:1: [sda] Write Protect is off
[  228.047376] sd 0:0:0:1: [sda] Mode Sense: 43 00 10 08
[  228.072743] sd 0:0:0:1: [sda] Write cache: enabled, read cache: enabled, supports DPO and FUA
[  228.093916] sd 0:0:0:1: [sda] Optimal transfer size 16384 logical blocks > dev_max (8192 logical blocks)
[  228.557627] sd 0:0:0:1: [sda] Attached SCSI disk
[  234.524407] BUG: sleeping function called from invalid context at net/core/sock.c:3048
[  234.524436] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 3475, name: iscsiadm
[  234.524439] 5 locks held by iscsiadm/3475:
[  234.524441]  #0: ffff88abf4f801a0 (&p->lock){+.+.}-{3:3}, at: seq_read+0x37/0x378
[  234.524447]  #1: ffff88ab972ef090 (&of->mutex){+.+.}-{3:3}, at: kernfs_seq_start+0x2a/0x83
[  234.524452]  #2: ffff88ab842e9168 (kn->active#391){.+.+}-{0:0}, at: kernfs_seq_start+0x32/0x83
[  234.524457]  #3: ffff88abbca0e0a8 (&conn->ep_mutex){+.+.}-{3:3}, at: show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0x2e/0x91 [scsi_transport_iscsi]
[  234.524465]  #4: ffff88abbca0b9b0 (&session->frwd_lock){+.-.}-{2:2}, at: iscsi_sw_tcp_conn_get_param+0x59/0xeb [iscsi_tcp]
[  234.524471] CPU: 6 PID: 3475 Comm: iscsiadm Not tainted 5.8.0-rc6 #73
[  234.524473] Hardware name: Dell Inc. XPS 13 9380/0KTW76, BIOS 1.10.0 02/04/2020
[  234.524474] Call Trace:
[  234.524478]  dump_stack+0x78/0x9f
[  234.524482]  ___might_sleep+0x1b9/0x1d2
[  234.524487]  lock_sock_nested+0x21/0x8d
[  234.524491]  inet_getname+0x7a/0xad
[  234.524494]  iscsi_sw_tcp_conn_get_param+0x94/0xeb [iscsi_tcp]
[  234.524503]  show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0x7b/0x91 [scsi_transport_iscsi]
[  234.524508]  dev_attr_show+0x20/0x42
[  234.524511]  sysfs_kf_seq_show+0x7f/0xce
[  234.524515]  seq_read+0x178/0x378
[  234.524521]  vfs_read+0xd2/0x12d
[  234.524525]  ksys_read+0x7f/0xcb
[  234.524531]  do_syscall_64+0x8e/0xc1
[  234.524533]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  234.524536] RIP: 0033:0x7f1866621f4e
[  234.524537] Code: Bad RIP value.
[  234.524539] RSP: 002b:00007ffe755521d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
[  234.524541] RAX: ffffffffffffffda RBX: 00007ffe75552370 RCX: 00007f1866621f4e
[  234.524542] RDX: 0000000000000100 RSI: 00007ffe75552270 RDI: 0000000000000003
[  234.524544] RBP: 00007ffe75552270 R08: 0000000000000001 R09: 00352e36382e3836
[  234.524545] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000003
[  234.524546] R13: 00007ffe755527b0 R14: 0000555be6e43590 R15: 0000555be6e4348c

[  234.524598] =====================================================
[  234.524599] WARNING: SOFTIRQ-safe -> SOFTIRQ-unsafe lock order detected
[  234.524600] 5.8.0-rc6 #73 Tainted: G        W        
[  234.524600] -----------------------------------------------------
[  234.524601] iscsiadm/3475 [HC0[0]:SC0[4]:HE1:SE0] is trying to acquire:
[  234.524602] ffff88abf6c651b0 (sk_lock-AF_INET){+.+.}-{0:0}, at: inet_getname+0x7a/0xad
[  234.524604] 
               and this task is already holding:
[  234.524605] ffff88abbca0b9b0 (&session->frwd_lock){+.-.}-{2:2}, at: iscsi_sw_tcp_conn_get_param+0x59/0xeb [iscsi_tcp]
[  234.524607] which would create a new lock dependency:
[  234.524608]  (&session->frwd_lock){+.-.}-{2:2} -> (sk_lock-AF_INET){+.+.}-{0:0}
[  234.524609] 
               but this new dependency connects a SOFTIRQ-irq-safe lock:
[  234.524610]  (&session->frwd_lock){+.-.}-{2:2}
[  234.524610] 
               ... which became SOFTIRQ-irq-safe at:
[  234.524613]   lock_acquire+0x2a3/0x33e
[  234.524615]   _raw_spin_lock+0x31/0x63
[  234.524618]   iscsi_check_transport_timeouts+0x23/0x1b4 [libiscsi]
[  234.524620]   call_timer_fn+0x141/0x288
[  234.524621]   __run_timers.part.0+0x171/0x1b2
[  234.524622]   run_timer_softirq+0x26/0x48
[  234.524623]   __do_softirq+0x1c1/0x3c2
[  234.524624]   asm_call_on_stack+0x12/0x20
[  234.524627]   do_softirq_own_stack+0x73/0x82
[  234.524629]   __irq_exit_rcu+0x46/0x81
[  234.524630]   irq_exit_rcu+0xa/0x1a
[  234.524631]   sysvec_apic_timer_interrupt+0xc7/0xd4
[  234.524632]   asm_sysvec_apic_timer_interrupt+0x12/0x20
[  234.524633]   cpuidle_enter_state+0xf3/0x1ad
[  234.524634]   cpuidle_enter+0x2a/0x36
[  234.524636]   do_idle+0x1ce/0x23d
[  234.524637]   cpu_startup_entry+0x1d/0x1f
[  234.524639]   start_secondary+0x16e/0x18b
[  234.524641]   secondary_startup_64+0xa4/0xb0
[  234.524641] 
               to a SOFTIRQ-irq-unsafe lock:
[  234.524642]  (sk_lock-AF_INET){+.+.}-{0:0}
[  234.524642] 
               ... which became SOFTIRQ-irq-unsafe at:
[  234.524643] ...
[  234.524644]   lockdep_hardirqs_on_prepare+0x13a/0x15a
[  234.524646]   trace_hardirqs_on+0x38/0x41
[  234.524647]   __local_bh_enable_ip+0xb6/0xba
[  234.524648]   sock_setsockopt+0x182/0xc2b
[  234.524649]   __sys_setsockopt+0xf9/0x15b
[  234.524650]   __x64_sys_setsockopt+0x21/0x24
[  234.524651]   do_syscall_64+0x8e/0xc1
[  234.524652]   entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  234.524653] 
               other info that might help us debug this:

[  234.524654]  Possible interrupt unsafe locking scenario:

[  234.524654]        CPU0                    CPU1
[  234.524655]        ----                    ----
[  234.524655]   lock(sk_lock-AF_INET);
[  234.524656]                                local_irq_disable();
[  234.524657]                                lock(&session->frwd_lock);
[  234.524658]                                lock(sk_lock-AF_INET);
[  234.524658]   <Interrupt>
[  234.524659]     lock(&session->frwd_lock);
[  234.524660] 
                *** DEADLOCK ***

[  234.524661] 5 locks held by iscsiadm/3475:
[  234.524661]  #0: ffff88abf4f801a0 (&p->lock){+.+.}-{3:3}, at: seq_read+0x37/0x378
[  234.524663]  #1: ffff88ab972ef090 (&of->mutex){+.+.}-{3:3}, at: kernfs_seq_start+0x2a/0x83
[  234.524666]  #2: ffff88ab842e9168 (kn->active#391){.+.+}-{0:0}, at: kernfs_seq_start+0x32/0x83
[  234.524668]  #3: ffff88abbca0e0a8 (&conn->ep_mutex){+.+.}-{3:3}, at: show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0x2e/0x91 [scsi_transport_iscsi]
[  234.524672]  #4: ffff88abbca0b9b0 (&session->frwd_lock){+.-.}-{2:2}, at: iscsi_sw_tcp_conn_get_param+0x59/0xeb [iscsi_tcp]
[  234.524674] 
               the dependencies between SOFTIRQ-irq-safe lock and the holding lock:
[  234.524677] -> (&session->frwd_lock){+.-.}-{2:2} {
[  234.524679]    HARDIRQ-ON-W at:
[  234.524681]                     lock_acquire+0x2a3/0x33e
[  234.524682]                     _raw_spin_lock_bh+0x39/0x6b
[  234.524684]                     iscsi_conn_setup+0x16d/0x21e [libiscsi]
[  234.524686]                     iscsi_tcp_conn_setup+0x10/0x3a [libiscsi_tcp]
[  234.524687]                     iscsi_sw_tcp_conn_create+0x19/0x107 [iscsi_tcp]
[  234.524691]                     iscsi_if_rx+0x3d0/0x1217 [scsi_transport_iscsi]
[  234.524692]                     netlink_unicast+0x111/0x1aa
[  234.524693]                     netlink_sendmsg+0x30c/0x340
[  234.524694]                     sock_sendmsg_nosec+0x32/0x3c
[  234.524695]                     ____sys_sendmsg+0x166/0x1cf
[  234.524696]                     ___sys_sendmsg+0x7f/0xb7
[  234.524697]                     __sys_sendmsg+0x60/0x93
[  234.524698]                     do_syscall_64+0x8e/0xc1
[  234.524699]                     entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  234.524700]    IN-SOFTIRQ-W at:
[  234.524701]                     lock_acquire+0x2a3/0x33e
[  234.524703]                     _raw_spin_lock+0x31/0x63
[  234.524705]                     iscsi_check_transport_timeouts+0x23/0x1b4 [libiscsi]
[  234.524706]                     call_timer_fn+0x141/0x288
[  234.524707]                     __run_timers.part.0+0x171/0x1b2
[  234.524709]                     run_timer_softirq+0x26/0x48
[  234.524710]                     __do_softirq+0x1c1/0x3c2
[  234.524711]                     asm_call_on_stack+0x12/0x20
[  234.524712]                     do_softirq_own_stack+0x73/0x82
[  234.524713]                     __irq_exit_rcu+0x46/0x81
[  234.524714]                     irq_exit_rcu+0xa/0x1a
[  234.524715]                     sysvec_apic_timer_interrupt+0xc7/0xd4
[  234.524716]                     asm_sysvec_apic_timer_interrupt+0x12/0x20
[  234.524718]                     cpuidle_enter_state+0xf3/0x1ad
[  234.524719]                     cpuidle_enter+0x2a/0x36
[  234.524720]                     do_idle+0x1ce/0x23d
[  234.524721]                     cpu_startup_entry+0x1d/0x1f
[  234.524723]                     start_secondary+0x16e/0x18b
[  234.524724]                     secondary_startup_64+0xa4/0xb0
[  234.524724]    INITIAL USE at:
[  234.524726]                    lock_acquire+0x2a3/0x33e
[  234.524727]                    _raw_spin_lock_bh+0x39/0x6b
[  234.524729]                    iscsi_conn_setup+0x16d/0x21e [libiscsi]
[  234.524730]                    iscsi_tcp_conn_setup+0x10/0x3a [libiscsi_tcp]
[  234.524732]                    iscsi_sw_tcp_conn_create+0x19/0x107 [iscsi_tcp]
[  234.524735]                    iscsi_if_rx+0x3d0/0x1217 [scsi_transport_iscsi]
[  234.524736]                    netlink_unicast+0x111/0x1aa
[  234.524737]                    netlink_sendmsg+0x30c/0x340
[  234.524738]                    sock_sendmsg_nosec+0x32/0x3c
[  234.524739]                    ____sys_sendmsg+0x166/0x1cf
[  234.524740]                    ___sys_sendmsg+0x7f/0xb7
[  234.524741]                    __sys_sendmsg+0x60/0x93
[  234.524742]                    do_syscall_64+0x8e/0xc1
[  234.524743]                    entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  234.524744]  }
[  234.524746]  ... key      at: [<ffffffffc0a24520>] __key.81082+0x0/0xffffffffffffaae0 [libiscsi]
[  234.524746]  ... acquired at:
[  234.524748]    lock_acquire+0x2a3/0x33e
[  234.524749]    lock_sock_nested+0x77/0x8d
[  234.524750]    inet_getname+0x7a/0xad
[  234.524752]    iscsi_sw_tcp_conn_get_param+0x94/0xeb [iscsi_tcp]
[  234.524754]    show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0x7b/0x91 [scsi_transport_iscsi]
[  234.524756]    dev_attr_show+0x20/0x42
[  234.524757]    sysfs_kf_seq_show+0x7f/0xce
[  234.524758]    seq_read+0x178/0x378
[  234.524759]    vfs_read+0xd2/0x12d
[  234.524760]    ksys_read+0x7f/0xcb
[  234.524761]    do_syscall_64+0x8e/0xc1
[  234.524762]    entry_SYSCALL_64_after_hwframe+0x44/0xa9

[  234.524763] 
               the dependencies between the lock to be acquired
[  234.524763]  and SOFTIRQ-irq-unsafe lock:
[  234.524766] -> (sk_lock-AF_INET){+.+.}-{0:0} {
[  234.524767]    HARDIRQ-ON-W at:
[  234.524769]                     lock_acquire+0x2a3/0x33e
[  234.524770]                     lock_sock_nested+0x77/0x8d
[  234.524771]                     sock_setsockopt+0x182/0xc2b
[  234.524772]                     __sys_setsockopt+0xf9/0x15b
[  234.524773]                     __x64_sys_setsockopt+0x21/0x24
[  234.524774]                     do_syscall_64+0x8e/0xc1
[  234.524775]                     entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  234.524775]    SOFTIRQ-ON-W at:
[  234.524777]                     lockdep_hardirqs_on_prepare+0x13a/0x15a
[  234.524778]                     trace_hardirqs_on+0x38/0x41
[  234.524779]                     __local_bh_enable_ip+0xb6/0xba
[  234.524780]                     sock_setsockopt+0x182/0xc2b
[  234.524781]                     __sys_setsockopt+0xf9/0x15b
[  234.524782]                     __x64_sys_setsockopt+0x21/0x24
[  234.524783]                     do_syscall_64+0x8e/0xc1
[  234.524783]                     entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  234.524784]    INITIAL USE at:
[  234.524785]                    lock_acquire+0x2a3/0x33e
[  234.524787]                    lock_sock_nested+0x77/0x8d
[  234.524788]                    sock_setsockopt+0x182/0xc2b
[  234.524788]                    __sys_setsockopt+0xf9/0x15b
[  234.524789]                    __x64_sys_setsockopt+0x21/0x24
[  234.524790]                    do_syscall_64+0x8e/0xc1
[  234.524791]                    entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  234.524792]  }
[  234.524794]  ... key      at: [<ffffffff8f9464c0>] af_family_keys+0x20/0x2d0
[  234.524795]  ... acquired at:
[  234.524796]    lock_acquire+0x2a3/0x33e
[  234.524798]    lock_sock_nested+0x77/0x8d
[  234.524799]    inet_getname+0x7a/0xad
[  234.524800]    iscsi_sw_tcp_conn_get_param+0x94/0xeb [iscsi_tcp]
[  234.524803]    show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0x7b/0x91 [scsi_transport_iscsi]
[  234.524804]    dev_attr_show+0x20/0x42
[  234.524805]    sysfs_kf_seq_show+0x7f/0xce
[  234.524806]    seq_read+0x178/0x378
[  234.524807]    vfs_read+0xd2/0x12d
[  234.524808]    ksys_read+0x7f/0xcb
[  234.524809]    do_syscall_64+0x8e/0xc1
[  234.524810]    entry_SYSCALL_64_after_hwframe+0x44/0xa9

[  234.524811] 
               stack backtrace:
[  234.524812] CPU: 6 PID: 3475 Comm: iscsiadm Tainted: G        W         5.8.0-rc6 #73
[  234.524813] Hardware name: Dell Inc. XPS 13 9380/0KTW76, BIOS 1.10.0 02/04/2020
[  234.524813] Call Trace:
[  234.524815]  dump_stack+0x78/0x9f
[  234.524817]  check_irq_usage+0x51e/0x551
[  234.524819]  ? check_path+0x1f/0x34
[  234.524821]  ? check_noncircular+0x5f/0xae
[  234.524823]  ? __lock_acquire+0xf21/0x1109
[  234.524824]  __lock_acquire+0xf21/0x1109
[  234.524826]  lock_acquire+0x2a3/0x33e
[  234.524828]  ? inet_getname+0x7a/0xad
[  234.524829]  ? sched_clock_cpu+0x10/0xaf
[  234.524831]  ? hlock_class+0x1a/0x5f
[  234.524833]  lock_sock_nested+0x77/0x8d
[  234.524834]  ? inet_getname+0x7a/0xad
[  234.524835]  inet_getname+0x7a/0xad
[  234.524837]  iscsi_sw_tcp_conn_get_param+0x94/0xeb [iscsi_tcp]
[  234.524841]  show_conn_ep_param_ISCSI_PARAM_CONN_ADDRESS+0x7b/0x91 [scsi_transport_iscsi]
[  234.524843]  dev_attr_show+0x20/0x42
[  234.524844]  sysfs_kf_seq_show+0x7f/0xce
[  234.524845]  seq_read+0x178/0x378
[  234.524847]  vfs_read+0xd2/0x12d
[  234.524849]  ksys_read+0x7f/0xcb
[  234.524850]  do_syscall_64+0x8e/0xc1
[  234.524851]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  234.524852] RIP: 0033:0x7f1866621f4e
[  234.524853] Code: Bad RIP value.
[  234.524854] RSP: 002b:00007ffe755521d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
[  234.524855] RAX: ffffffffffffffda RBX: 00007ffe75552370 RCX: 00007f1866621f4e
[  234.524856] RDX: 0000000000000100 RSI: 00007ffe75552270 RDI: 0000000000000003
[  234.524857] RBP: 00007ffe75552270 R08: 0000000000000001 R09: 00352e36382e3836
[  234.524857] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000003
[  234.524858] R13: 00007ffe755527b0 R14: 0000555be6e43590 R15: 0000555be6e4348c

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200814130904.GA3597%40mit.edu.
