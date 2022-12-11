Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBHGU26OAMGQEVHBZ74A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9726494AD
	for <lists+open-iscsi@lfdr.de>; Sun, 11 Dec 2022 15:33:03 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id m4-20020a2ea584000000b0027a02705679sf2236745ljp.4
        for <lists+open-iscsi@lfdr.de>; Sun, 11 Dec 2022 06:33:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670769182; cv=pass;
        d=google.com; s=arc-20160816;
        b=vF8HCtvl0+XddmsXSZi4hs5eXwNjhXzDv/TDW/nDT9HZRnfzlNj1owu7t3j7Z5BWbV
         kT3N0+Z8CKKANPR6c+1W3Jt1exD75IRJxuoe6VSvB4o33epJhceDqrHs4gyI6bAPf47Y
         AfsiyESY+XnC5i95f3AoMk5jdzslVUuR7D5cMlBquP+XGJK2kP9jZ/YQ3DflOJqkDuS0
         4mElLcJcRZlVwETIWII63ivbCKpeAaLhmwYemf7r3ctephtgiX1iDhyTQYx1f+BRxwLG
         c/Q6w+2HGrq+sWpAkjvDKWV6LmHq64Qw5/vJaf4NgszgTle4a0YEdVgDjXZacLoN/3hC
         eZvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xu3dir888O9DHU0/v9yKMsiqp3VXvDISwNOodfBo4n0=;
        b=yJoR9lGdCiUxEY2tb6ZFfOaEm1AE8QePAg6WpWSyGXgDxwtKo8Hy4SsehdiraoCM/T
         JbrCqXFMSmBgaLmJFoIoePDXfl1EgEZiUpwtHsh2VwNewopIE9oHZQJUtQOhVdDs08nc
         +1wwPTsQmZgyQcH2jWASBhrRjdDEAdv/r5Ot8zxp805gsswNbd7jMnIH4tGmPv51COjr
         /Pk/3JMslc9vWEb0zaX38hhZANnrvAS/DthzSVZq674m/6I1n3SvCIAxp78sT9/igW1Y
         U11/sVUB17hbApRo1KwGmKsxnrMLybmGBrfFo4rH10x5UuN2WPfDF+cVZv69OV45QhWT
         wCSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=jPUk5MmJ;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xu3dir888O9DHU0/v9yKMsiqp3VXvDISwNOodfBo4n0=;
        b=dUj63DsJj0lLm5dty+/EVxNA2W3bgxxPQ7+UHzlCXvReVbQudn96oif8/Xusp6+CzV
         47Py+rdeMAKNgA49tzt0T+Wj3Nb1jvfx5DX3Ni12J/PBZJ5skNAynP6qnLS1E+mkU6+K
         GPMa/ZvU1RiNkXv7dz0hAnkx83/WlJSSjhRS+IPvv5SIhmV3q5c/u0xnyqUT2HX+0fqf
         zYucQf68sDiQ+g4lxs6Lx5uN5JeZSxy6UtJJfETdEEKY6J2IH3JfNc6HrSrh+EQoOb8n
         4D+ECCKSUdp463+bIR4ymhEC2X3Z5LWt1f1A6fInPmo6R6zODe7G4f7wWO8ysYyobNaJ
         qfGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xu3dir888O9DHU0/v9yKMsiqp3VXvDISwNOodfBo4n0=;
        b=aPBXDKABUXRC6+WmMML/80jFulJbDbdbVPsnEkfj1T6lDb+Ujz5xuggTkOtHlU6j9u
         bN8cFvpCDgbAf2vclxQxlA6YiPDoMBvt5gR7kIUVudVO5KqmAS9JWui/B4kLu5LiKOpl
         ncAkzkwfqH2gj8l6M3woGyUsjq1RG4hYHD4AbgcqEjSLwiMCZchLMmt6Hf9/bv/HfRza
         cWXUOi3/GI2wrN1Vu8wCFKq7KrIrbsgXQNE8ZqGxYH4SQGwBhK5tqQXjJtKjhtBWCE8a
         KfchBXhcZSiaFKHgPR4aN4lXsvT6BW+LOwyLIHcSJ17L3bhm9lKTKBPcCmBETOZ5iw9v
         FAag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xu3dir888O9DHU0/v9yKMsiqp3VXvDISwNOodfBo4n0=;
        b=ncLdL+ELFZpNpO3xLXUMzpGxf597gt1O3e3GeQqhsQH1WfKQWvm1tiY/kQJ+aG3MOR
         CfvbRp18TPpuWETdcp3o+EWVR1W2JDftVT7XQ5+DNNdOgVql+g5R8zUzAQP5N27hiPun
         y/iKPVt4ziJtf7efFgnAfbD5kvzrknkD3p/JYAyPVRNx4N/rHoBExwmeasEES91/Dld3
         qVL2rS1YHlWSzuAfb4CW6/ji6IsX6YPlskMxjv3r5jrlGG6DCDXK+yJo6I5wNE4nx3X4
         Gv5qjmjAbSoeaRBlD7j9TNUvfZhYr3/mJOTa/aFOPpKBnFrLA+5Ufzh/i2abEEt3MjnS
         Emjg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pm9H2h26122Bj5Fj05wfLhp5uGGcwZonL8z61XNXcDe5BNn3+t5
	Ox+7pJOjpJvcafADQuuruFg=
X-Google-Smtp-Source: AA0mqf5ve92d6z8qKSjgTdjXp+cX976SnM0OeG52/a+ojX5O+Ee2pvHFZ8fz41Sf9s4AWt1noMtMGA==
X-Received: by 2002:a2e:81cd:0:b0:27b:4754:80e8 with SMTP id s13-20020a2e81cd000000b0027b475480e8mr260273ljg.366.1670769182784;
        Sun, 11 Dec 2022 06:33:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:2012:b0:4a2:3951:eac8 with SMTP id
 a18-20020a056512201200b004a23951eac8ls5239520lfb.0.-pod-prod-gmail; Sun, 11
 Dec 2022 06:32:59 -0800 (PST)
X-Received: by 2002:a05:6512:b8d:b0:4b5:a9ca:9725 with SMTP id b13-20020a0565120b8d00b004b5a9ca9725mr4112338lfv.28.1670769179828;
        Sun, 11 Dec 2022 06:32:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670769179; cv=none;
        d=google.com; s=arc-20160816;
        b=oIYNiE4yXeXi9Pg4n23vTx7CeSEMT1OUNJESpLFH1rO1/uHTQQ/KoTaImEOStADQAa
         HN5hXOdoxesF4nB2Ni4OAShdHbBOuTSq/4r8FemNp9wo1vV972urrz8DgQT5n3gDlnRV
         L6U8adBlhwkHxA5BtBGeR5LwYYCM62aR5+mtrMvy77wGMgjbMp01MVoQrp/KZxV7PoyH
         x8Z5n4LolBKYq3n2Px7d2uEX0MPsnSjAS4FdrhFBT9DZLID7WhxbfqcQx3bCf2vMf2qZ
         bsNYcaoEOlkFZInQxhKE/SaySU//7X4bGIsA8RtZnfjhXmZBy73wAOxoqexrdATyMTH3
         cK3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4WqUoVsa+BZHuhTAxrHNAL1fk+hhKzh6lmfruqRjY0A=;
        b=jfH0JRb0jl985acgnpzBzQjOeb17bIoa7Eync/3YG+DcHhbnWwvw+8dYi7rlFYDuRd
         9UUeXNTFOaMfF+Y2aGkvwzbyP758pgk/t7z0sosxaM5JAUnS1p+sp6eZkx3RV2bBnGnh
         Elg+Ow/Q/rPBp0o3KuDxKdQsqa8rscw5e3SS8w+CvppxCvZ7Bk7c61eJMamTLgnfMi06
         4aBdySi96V4JmShphWGWNuCpo2IC6qeSaOzhWjbbM5NjUBLPnugfRHsJ82hNX7UIMPRA
         vSo3niQZeNgxDOaMSeez3RpHox52ih2ZUyiDnq/MnIc8vzqvqmrLfgjsKBfdcnkfO7h1
         VaOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=jPUk5MmJ;
       spf=pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id g2-20020a056512118200b0048b38f379d7si391733lfr.0.2022.12.11.06.32.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 06:32:59 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Received: by mail-ej1-x62b.google.com with SMTP id ud5so22084993ejc.4
        for <open-iscsi@googlegroups.com>; Sun, 11 Dec 2022 06:32:59 -0800 (PST)
X-Received: by 2002:a17:906:3604:b0:78d:99a0:7cf6 with SMTP id
 q4-20020a170906360400b0078d99a07cf6mr79046763ejb.56.1670769179467; Sun, 11
 Dec 2022 06:32:59 -0800 (PST)
MIME-Version: 1.0
References: <20221209082247.6330-1-dinghui@sangfor.com.cn> <ae9ee90e-e890-e054-6cf9-8acadd6012b9@oracle.com>
In-Reply-To: <ae9ee90e-e890-e054-6cf9-8acadd6012b9@oracle.com>
From: Wenchao Hao <haowenchao22@gmail.com>
Date: Sun, 11 Dec 2022 22:32:46 +0800
Message-ID: <CAOptpSO-TMhqR35RW4Sssm29NA=8rJ6-9TgjTVpGKpYOeS_8sA@mail.gmail.com>
Subject: Re: [PATCH] scsi: iscsi_tcp: Fix UAF when access shost attr during
 session logout
To: Mike Christie <michael.christie@oracle.com>
Cc: Ding Hui <dinghui@sangfor.com.cn>, lduncan@suse.com, cleech@redhat.com, 
	jejb@linux.ibm.com, martin.petersen@oracle.com, open-iscsi@googlegroups.com, 
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haowenchao22@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=jPUk5MmJ;       spf=pass
 (google.com: domain of haowenchao22@gmail.com designates 2a00:1450:4864:20::62b
 as permitted sender) smtp.mailfrom=haowenchao22@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Dec 11, 2022 at 6:07 AM Mike Christie
<michael.christie@oracle.com> wrote:
>
> On 12/9/22 2:22 AM, Ding Hui wrote:
> > During iscsi session logout, if another task accessing shost ipaddress
> > attr at this time, we can get a KASAN UAF report like this:
> >
> > [  276.941685] ==================================================================
> > [  276.942144] BUG: KASAN: use-after-free in _raw_spin_lock_bh+0x78/0xe0
> > [  276.942535] Write of size 4 at addr ffff8881053b45b8 by task cat/4088
> > [  276.943511] CPU: 2 PID: 4088 Comm: cat Tainted: G            E      6.1.0-rc8+ #3
> > [  276.943997] Hardware name: VMware, Inc. VMware Virtual Platform/440BX Desktop Reference Platform, BIOS 6.00 11/12/2020
> > [  276.944470] Call Trace:
> > [  276.944943]  <TASK>
> > [  276.945397]  dump_stack_lvl+0x34/0x48
> > [  276.945887]  print_address_description.constprop.0+0x86/0x1e7
> > [  276.946421]  print_report+0x36/0x4f
> > [  276.947358]  kasan_report+0xad/0x130
> > [  276.948234]  kasan_check_range+0x35/0x1c0
> > [  276.948674]  _raw_spin_lock_bh+0x78/0xe0
> > [  276.949989]  iscsi_sw_tcp_host_get_param+0xad/0x2e0 [iscsi_tcp]
> > [  276.951765]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0xe9/0x130 [scsi_transport_iscsi]
> > [  276.952185]  dev_attr_show+0x3f/0x80
> > [  276.953005]  sysfs_kf_seq_show+0x1fb/0x3e0
> > [  276.953401]  seq_read_iter+0x402/0x1020
> > [  276.954260]  vfs_read+0x532/0x7b0
> > [  276.955113]  ksys_read+0xed/0x1c0
> > [  276.955952]  do_syscall_64+0x38/0x90
> > [  276.956347]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> > [  276.956769] RIP: 0033:0x7f5d3a679222
> > [  276.957161] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 32 c0 0b 00 e8 a5 fe 01 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
> > [  276.958009] RSP: 002b:00007ffc864d16a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
> > [  276.958431] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007f5d3a679222
> > [  276.958857] RDX: 0000000000020000 RSI: 00007f5d3a4fe000 RDI: 0000000000000003
> > [  276.959281] RBP: 00007f5d3a4fe000 R08: 00000000ffffffff R09: 0000000000000000
> > [  276.959682] R10: 0000000000000022 R11: 0000000000000246 R12: 0000000000020000
> > [  276.960126] R13: 0000000000000003 R14: 0000000000000000 R15: 0000557a26dada58
> > [  276.960536]  </TASK>
> > [  276.961357] Allocated by task 2209:
> > [  276.961756]  kasan_save_stack+0x1e/0x40
> > [  276.962170]  kasan_set_track+0x21/0x30
> > [  276.962557]  __kasan_kmalloc+0x7e/0x90
> > [  276.962923]  __kmalloc+0x5b/0x140
> > [  276.963308]  iscsi_alloc_session+0x28/0x840 [scsi_transport_iscsi]
> > [  276.963712]  iscsi_session_setup+0xda/0xba0 [libiscsi]
> > [  276.964078]  iscsi_sw_tcp_session_create+0x1fd/0x330 [iscsi_tcp]
> > [  276.964431]  iscsi_if_create_session.isra.0+0x50/0x260 [scsi_transport_iscsi]
> > [  276.964793]  iscsi_if_recv_msg+0xc5a/0x2660 [scsi_transport_iscsi]
> > [  276.965153]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
> > [  276.965546]  netlink_unicast+0x4d5/0x7b0
> > [  276.965905]  netlink_sendmsg+0x78d/0xc30
> > [  276.966236]  sock_sendmsg+0xe5/0x120
> > [  276.966576]  ____sys_sendmsg+0x5fe/0x860
> > [  276.966923]  ___sys_sendmsg+0xe0/0x170
> > [  276.967300]  __sys_sendmsg+0xc8/0x170
> > [  276.967666]  do_syscall_64+0x38/0x90
> > [  276.968028]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> > [  276.968773] Freed by task 2209:
> > [  276.969111]  kasan_save_stack+0x1e/0x40
> > [  276.969449]  kasan_set_track+0x21/0x30
> > [  276.969789]  kasan_save_free_info+0x2a/0x50
> > [  276.970146]  __kasan_slab_free+0x106/0x190
> > [  276.970470]  __kmem_cache_free+0x133/0x270
> > [  276.970816]  device_release+0x98/0x210
> > [  276.971145]  kobject_cleanup+0x101/0x360
> > [  276.971462]  iscsi_session_teardown+0x3fb/0x530 [libiscsi]
> > [  276.971775]  iscsi_sw_tcp_session_destroy+0xd8/0x130 [iscsi_tcp]
> > [  276.972143]  iscsi_if_recv_msg+0x1bf1/0x2660 [scsi_transport_iscsi]
> > [  276.972485]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
> > [  276.972808]  netlink_unicast+0x4d5/0x7b0
> > [  276.973201]  netlink_sendmsg+0x78d/0xc30
> > [  276.973544]  sock_sendmsg+0xe5/0x120
> > [  276.973864]  ____sys_sendmsg+0x5fe/0x860
> > [  276.974248]  ___sys_sendmsg+0xe0/0x170
> > [  276.974583]  __sys_sendmsg+0xc8/0x170
> > [  276.974891]  do_syscall_64+0x38/0x90
> > [  276.975216]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> >
> > We can easily reproduce by two tasks:
> > 1. while :; do iscsiadm -m node --login; iscsiadm -m node --logout; done
> > 2. while :; do cat /sys/devices/platform/host*/iscsi_host/host*/ipaddress; done
> >
> >             iscsid                |        cat
> > ----------------------------------+-------------------------------------------------
> > |- iscsi_sw_tcp_session_destroy   |
> >   |- iscsi_session_teardown       |
> >     |- device_release             |
> >       |- iscsi_session_release    |  |- dev_attr_show
> >         |- kfree                  |    |- show_host_param_ISCSI_HOST_PARAM_IPADDRESS
> >                                   |      |- iscsi_sw_tcp_host_get_param
> >                                   |        |- r/w tcp_sw_host->session (UAF)
> >   |- iscsi_host_remove            |
> >   |- iscsi_host_free              |
> >
> > Since shost hold a pointer to session which is belong to cls_session by its
> > priv tcp_sw_host, so we should get a ref of cls_session, and after
> > iscsi_host_remove() the sysfs is cleared, then we can drop the ref.
> >
>
> Nice bug report and thanks for the patch. I think though we should just
> split the removal from the freeing. The removal will wait on users
> accessing sysfs files for us, so once they return we know we can just
> free things.
>
> Something like this:
>
>

Hi, dinghui and Mike, I submitted patches to fix this issue one year
ago. But I missed Mike's
reply because I was new to the community, so the patches did not keep on.

https://lore.kernel.org/linux-scsi/20210407012450.97754-1-haowenchao@huawei.com/

Because of my negligence, this bug has been discovered so far, and I
apologize for this.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOptpSO-TMhqR35RW4Sssm29NA%3D8rJ6-9TgjTVpGKpYOeS_8sA%40mail.gmail.com.
