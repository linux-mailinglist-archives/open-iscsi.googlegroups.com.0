Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBVNW77FAMGQEN5RKIBY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 82743D045FA
	for <lists+open-iscsi@lfdr.de>; Thu, 08 Jan 2026 17:29:14 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id 98e67ed59e1d1-34e5a9de94bsf6316823a91.0
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Jan 2026 08:29:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767889753; cv=pass;
        d=google.com; s=arc-20240605;
        b=eTtvPt9H2MRab3YVf2cVqUwuE/lym79NC+yNiZ8FAz50w0j+skFsaeJLnXnNmk2uIO
         suYU3XkvN+OzeOJl3QzcUn7OkIXKigQZ8UQCkqPXHQrDQkxWNm8vdkPJhiYYpg5oxifR
         7HJ8OhPDG+LG1G+4/kZRLHzwfWHEzyTV1SQJhsJ7wtXRYS+kmzrKBzqGteoeqyzdEV8+
         6zVppJZwIuTjRRxz0Y9a6pXUArlHegJFoyUn3zoqzrQ2OpTGLQ2SCh+pWSaqQkUtRJMg
         c4Smu3Ifcv/xFMI3pWr6or9ysIcnOYm0hVQvqNdVreV0nac6zRcI+2rm/eTCuX9Ce9oQ
         3xCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:message-id:in-reply-to:date:from:cc:to:subject:sender
         :dkim-signature;
        bh=JoAQKbEDR2jJpghrAGSAXZJW7NdtgYm1ESgvoqh9t7Q=;
        fh=49V8iy5QMjtv1j0C6Kv3NXm/oaXKnYxfMj5LT+aUh5s=;
        b=bvMA1xlRm+ul9wIi/6lAxQgt3XpIqzTKqkTfkjfOgR8WjnzRxs33U3LkKSichq8Dy7
         p+h3gEPYbZ/SivaDW0aGXpudxAIKNyFCKlMiKPEBBJvrt4QECGK59lA6F9rCIM8RkKDF
         HzwxeqORKY85Y7dPkmS/ry2qyFTHzOXuG2wKaQ7QQ1yzmQnW1YkysYGyyH/7BdyhI+db
         +4dwpT5N9LxZxGoUgkhGjm8+aHfqU+LRM1Ltv610tsJ6XWX/Jww89UgK+6jluuhXpcIO
         rJG2Ew+C87nkLau+9oyk7TYFi1J6wtL6tbwR5G58IM8n5SihJgnyJzoa7gORZ+3Kqy9p
         5s6A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=zAjgNci5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1767889753; x=1768494553; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:message-id
         :in-reply-to:date:from:cc:to:subject:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JoAQKbEDR2jJpghrAGSAXZJW7NdtgYm1ESgvoqh9t7Q=;
        b=uD9z1dg0xUTBm6aS9M+auUb0TiwAf+xAUJLPbt/8YrKlBkXw4ClYLqtffC7xKQ0YKL
         raMWrbwxrQNAQyXr5aJz4NXeHH5OZN8gfROj5jns8eHmlD0dc/JkHFGbayVHApiD24Yf
         2F9bLyN7rtfaLH9b7qrIAYOAvC41JS3JX8VmA9560jmbZAhbjkH08CizPM14c2cMZEe8
         zmTt8XNclMHp8/VzkiR5+KBbiSd/DdSyS70vWcbW99fiCWI5HT8zgTASPXe5B6FRZkVV
         ZblD90frtZrpR61C2E/a6luv8RTx1HJKca1B2yXmfI7KRerZiFmlJHIPodUR6pOH+s4N
         rqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767889753; x=1768494553;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JoAQKbEDR2jJpghrAGSAXZJW7NdtgYm1ESgvoqh9t7Q=;
        b=ldGsw6aRogqQ1UG0s7vpcS3b4OCxakYgOg0ikQjx4Y4Dzra9qO8sxwueKrycLP34tc
         0YxvCEzSxEA+mpFUmyk2xF0Sv7zSgyGrQjy8MaZUuedfhxG8OIRF4OyLxl9BZHSd39Ju
         WHjQG6F1nJfLUaKYP5BWHoFOBrQK4lS4shJlAOSf8PpU5UQUe8e17aom/FLdIW8hRZYB
         /XyP2b5TeP1XgwMeDTxha5lU5K1f79f3XSFNzYjLsmsRXkh5/UM5xxHOFSg/A64DhGGT
         sx24soH8ubzY6wRd+8OqY6+h+N0YC/K7PT4/8Wh1NMG0Xq3oe8L3NBH4RnJuhsusgEDz
         YL/w==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCX7NITtBLMoluj9mTNu5JeioZx4Ft6ZNweuxnMXEnDFAM4V2bv2FGMaYa+Js8ezcJHEcAOnrQ==@lfdr.de
X-Gm-Message-State: AOJu0YzXG8NmG1+srXIjF51HGXJF2vOKVqHUGD/j17R8fqB58mkMYBdW
	yL0zOX1K7KRDblTrQPPo1L2KSTT9SEg8K2GON+SHnt7JIIQmDl8xnXB0
X-Google-Smtp-Source: AGHT+IHEUk6ciOM2LNgNZAxx3snHTPpaVH1vf3eLmL425bSaWI5VsIi3h/NKtAspoWlnZFUGqPuKtw==
X-Received: by 2002:a05:6a20:7f93:b0:37b:98c3:4250 with SMTP id adf61e73a8af0-3898f8ddd55mr6708620637.19.1767889752675;
        Thu, 08 Jan 2026 08:29:12 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com; h="AWVwgWYuiWijNUp/6a1RCjHFCsmg6LBVbEowdqLMzxeind9+5Q=="
Received: by 2002:a17:902:6b09:b0:297:d9d1:1fb3 with SMTP id
 d9443c01a7336-2a3e2b1869cls27194595ad.2.-pod-prod-06-us; Thu, 08 Jan 2026
 08:29:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUsJAT7MDPjBUn9Go+DFPtdNOLT+GYeYbsGtyhs6CbtonOVuskQqj4nlvXmv4LZzRkTrA5GG2WhQhJb@googlegroups.com
X-Received: by 2002:a17:903:11cc:b0:2a0:b62e:e012 with SMTP id d9443c01a7336-2a3ee491c36mr63746225ad.38.1767889748456;
        Thu, 08 Jan 2026 08:29:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1767889748; cv=none;
        d=google.com; s=arc-20240605;
        b=CvHBGhe7R8K1qQNLApQNtlTcSw6n7akbCvOim5cj5lPiwGeNpZcYwaTZb/vsKvjZMi
         LH9hiyFjaPcAHisxXGqk1JcbkmLrTHOqwn1eUeSpOX8SZSzWXlj1ALLKycjjbmhhd+BV
         9TNFHnu+Foe6A4ZDOtu6iTbSSCexqCCw+lUJTPHzQmEL/hghJlUnDJ1aA9TUu2KhQGq9
         5cY1D5cDgtzAr/fadbgT8tVdTDDnUNJcX9V4Go47Z8Brd1OizGWeXWsfr8eW/eoTqqgN
         03zWuq41p3fPcsckOp/EhoVTd41Ank4KdnxbkPXvt9FNm5pG34vJ1kuyRJYnCkFNPkqY
         oShA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=EgDuFPWYU0ba7C2fI/eBHANvZDAr2EQKvsKuIbr6MJg=;
        fh=qQ1Z2Df6mv3/Jy3T7he/QPYJacknP5k+IQdLGl54UmE=;
        b=BTfFF5UEYwBQs+tslqGEs9J9oJhYbVNNZ2CJY/kApAtbquQXbb/OUtTGCTtk2yA6Mp
         bqKGwbR9eievBTxpxj4x6Ncv22Uk1eqspzOwkk/c1PF9DTcZxEzbJw276VsjqW6VFKYR
         Lq9mVL9YbC0WJhQUIT3ys45h+p9v1YwERF6HrDpDjEOl0jHJ3UchXTCLQD+pcguIB2/n
         hBMiL+d2ufque4iBHREKxWtzuXAoD59GQF2AI6FCZfhHxhevpOIioG/uXf5zehCNIPkC
         F0xfOpczZx+ydeOKqml/OpGRUhaEmPj8LSVh+cyrsILgNZyc94IGcSjShRK2aeoyGomn
         xGGg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=zAjgNci5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [2600:3c0a:e001:78e:0:1991:8:25])
        by gmr-mx.google.com with ESMTPS id d9443c01a7336-2a3e4726083si2542605ad.5.2026.01.08.08.29.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 08:29:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) client-ip=2600:3c0a:e001:78e:0:1991:8:25;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C382403CA;
	Thu,  8 Jan 2026 16:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78BC6C116C6;
	Thu,  8 Jan 2026 16:29:07 +0000 (UTC)
Subject: Patch "scsi: iscsi_tcp: Fix UAF during logout when accessing the shost ipaddress" has been added to the 5.10-stable tree
To: James.Bottomley@HansenPartnership.com,ajay.kaher@broadcom.com,alexey.makhalov@broadcom.com,cleech@redhat.com,dinghui@sangfor.com.cn,gregkh@linuxfoundation.org,lduncan@suse.com,martin.petersen@oracle.com,michael.christie@oracle.com,open-iscsi@googlegroups.com,shivani.agarwal@broadcom.com,tapas.kundu@broadcom.com,vamsi-krishna.brahmajosyula@broadcom.com,yin.ding@broadcom.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Thu, 08 Jan 2026 17:27:40 +0100
In-Reply-To: <20260108062222.670715-3-shivani.agarwal@broadcom.com>
Message-ID: <2026010840-comment-unviable-dc9a@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=zAjgNci5;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>


This is a note to let you know that I've just added the patch titled

    scsi: iscsi_tcp: Fix UAF during logout when accessing the shost ipaddre=
ss

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.git=
;a=3Dsummary

The filename of the patch is:
     scsi-iscsi_tcp-fix-uaf-during-logout-when-accessing-the-shost-ipaddres=
s.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From stable+bounces-206250-greg=3Dkroah.com@vger.kernel.org Thu Jan  8 07:4=
6:57 2026
From: Shivani Agarwal <shivani.agarwal@broadcom.com>
Date: Wed,  7 Jan 2026 22:22:22 -0800
Subject: scsi: iscsi_tcp: Fix UAF during logout when accessing the shost ip=
address
To: stable@vger.kernel.org, gregkh@linuxfoundation.org
Cc: lduncan@suse.com, cleech@redhat.com, michael.christie@oracle.com, James=
.Bottomley@HansenPartnership.com, martin.petersen@oracle.com, open-iscsi@go=
oglegroups.com, linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, a=
jay.kaher@broadcom.com, alexey.makhalov@broadcom.com, vamsi-krishna.brahmaj=
osyula@broadcom.com, yin.ding@broadcom.com, tapas.kundu@broadcom.com, Ding =
Hui <dinghui@sangfor.com.cn>, Shivani Agarwal <shivani.agarwal@broadcom.com=
>
Message-ID: <20260108062222.670715-3-shivani.agarwal@broadcom.com>

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit 6f1d64b13097e85abda0f91b5638000afc5f9a06 ]

Bug report and analysis from Ding Hui.

During iSCSI session logout, if another task accesses the shost ipaddress
attr, we can get a KASAN UAF report like this:

[  276.942144] BUG: KASAN: use-after-free in _raw_spin_lock_bh+0x78/0xe0
[  276.942535] Write of size 4 at addr ffff8881053b45b8 by task cat/4088
[  276.943511] CPU: 2 PID: 4088 Comm: cat Tainted: G            E      6.1.=
0-rc8+ #3
[  276.943997] Hardware name: VMware, Inc. VMware Virtual Platform/440BX De=
sktop Reference Platform, BIOS 6.00 11/12/2020
[  276.944470] Call Trace:
[  276.944943]  <TASK>
[  276.945397]  dump_stack_lvl+0x34/0x48
[  276.945887]  print_address_description.constprop.0+0x86/0x1e7
[  276.946421]  print_report+0x36/0x4f
[  276.947358]  kasan_report+0xad/0x130
[  276.948234]  kasan_check_range+0x35/0x1c0
[  276.948674]  _raw_spin_lock_bh+0x78/0xe0
[  276.949989]  iscsi_sw_tcp_host_get_param+0xad/0x2e0 [iscsi_tcp]
[  276.951765]  show_host_param_ISCSI_HOST_PARAM_IPADDRESS+0xe9/0x130 [scsi=
_transport_iscsi]
[  276.952185]  dev_attr_show+0x3f/0x80
[  276.953005]  sysfs_kf_seq_show+0x1fb/0x3e0
[  276.953401]  seq_read_iter+0x402/0x1020
[  276.954260]  vfs_read+0x532/0x7b0
[  276.955113]  ksys_read+0xed/0x1c0
[  276.955952]  do_syscall_64+0x38/0x90
[  276.956347]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[  276.956769] RIP: 0033:0x7f5d3a679222
[  276.957161] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 32 c0 0b 00 e8 a5 fe 01 =
00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48=
> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
[  276.958009] RSP: 002b:00007ffc864d16a8 EFLAGS: 00000246 ORIG_RAX: 000000=
0000000000
[  276.958431] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007f5d3a6=
79222
[  276.958857] RDX: 0000000000020000 RSI: 00007f5d3a4fe000 RDI: 00000000000=
00003
[  276.959281] RBP: 00007f5d3a4fe000 R08: 00000000ffffffff R09: 00000000000=
00000
[  276.959682] R10: 0000000000000022 R11: 0000000000000246 R12: 00000000000=
20000
[  276.960126] R13: 0000000000000003 R14: 0000000000000000 R15: 0000557a26d=
ada58
[  276.960536]  </TASK>
[  276.961357] Allocated by task 2209:
[  276.961756]  kasan_save_stack+0x1e/0x40
[  276.962170]  kasan_set_track+0x21/0x30
[  276.962557]  __kasan_kmalloc+0x7e/0x90
[  276.962923]  __kmalloc+0x5b/0x140
[  276.963308]  iscsi_alloc_session+0x28/0x840 [scsi_transport_iscsi]
[  276.963712]  iscsi_session_setup+0xda/0xba0 [libiscsi]
[  276.964078]  iscsi_sw_tcp_session_create+0x1fd/0x330 [iscsi_tcp]
[  276.964431]  iscsi_if_create_session.isra.0+0x50/0x260 [scsi_transport_i=
scsi]
[  276.964793]  iscsi_if_recv_msg+0xc5a/0x2660 [scsi_transport_iscsi]
[  276.965153]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
[  276.965546]  netlink_unicast+0x4d5/0x7b0
[  276.965905]  netlink_sendmsg+0x78d/0xc30
[  276.966236]  sock_sendmsg+0xe5/0x120
[  276.966576]  ____sys_sendmsg+0x5fe/0x860
[  276.966923]  ___sys_sendmsg+0xe0/0x170
[  276.967300]  __sys_sendmsg+0xc8/0x170
[  276.967666]  do_syscall_64+0x38/0x90
[  276.968028]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[  276.968773] Freed by task 2209:
[  276.969111]  kasan_save_stack+0x1e/0x40
[  276.969449]  kasan_set_track+0x21/0x30
[  276.969789]  kasan_save_free_info+0x2a/0x50
[  276.970146]  __kasan_slab_free+0x106/0x190
[  276.970470]  __kmem_cache_free+0x133/0x270
[  276.970816]  device_release+0x98/0x210
[  276.971145]  kobject_cleanup+0x101/0x360
[  276.971462]  iscsi_session_teardown+0x3fb/0x530 [libiscsi]
[  276.971775]  iscsi_sw_tcp_session_destroy+0xd8/0x130 [iscsi_tcp]
[  276.972143]  iscsi_if_recv_msg+0x1bf1/0x2660 [scsi_transport_iscsi]
[  276.972485]  iscsi_if_rx+0x198/0x4b0 [scsi_transport_iscsi]
[  276.972808]  netlink_unicast+0x4d5/0x7b0
[  276.973201]  netlink_sendmsg+0x78d/0xc30
[  276.973544]  sock_sendmsg+0xe5/0x120
[  276.973864]  ____sys_sendmsg+0x5fe/0x860
[  276.974248]  ___sys_sendmsg+0xe0/0x170
[  276.974583]  __sys_sendmsg+0xc8/0x170
[  276.974891]  do_syscall_64+0x38/0x90
[  276.975216]  entry_SYSCALL_64_after_hwframe+0x63/0xcd

We can easily reproduce by two tasks:
1. while :; do iscsiadm -m node --login; iscsiadm -m node --logout; done
2. while :; do cat \
/sys/devices/platform/host*/iscsi_host/host*/ipaddress; done

            iscsid              |        cat
--------------------------------+---------------------------------------
|- iscsi_sw_tcp_session_destroy |
  |- iscsi_session_teardown     |
    |- device_release           |
      |- iscsi_session_release  ||- dev_attr_show
        |- kfree                |  |- show_host_param_
                                |             ISCSI_HOST_PARAM_IPADDRESS
                                |    |- iscsi_sw_tcp_host_get_param
                                |      |- r/w tcp_sw_host->session (UAF)
  |- iscsi_host_remove          |
  |- iscsi_host_free            |

Fix the above bug by splitting the session removal into 2 parts:

 1. removal from iSCSI class which includes sysfs and removal from host
    tracking.

 2. freeing of session.

During iscsi_tcp host and session removal we can remove the session from
sysfs then remove the host from sysfs. At this point we know userspace is
not accessing the kernel via sysfs so we can free the session and host.

Link: https://lore.kernel.org/r/20230117193937.21244-2-michael.christie@ora=
cle.com
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Acked-by: Ding Hui <dinghui@sangfor.com.cn>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
[Shivani: The false parameter was not passed to iscsi_host_remove() because=
,
          in Linux 5.10.y, the default behavior of iscsi_host_remove() alre=
ady
          assumes false.]
Signed-off-by: Shivani Agarwal <shivani.agarwal@broadcom.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/scsi/iscsi_tcp.c |   11 +++++++++--
 drivers/scsi/libiscsi.c  |   38 +++++++++++++++++++++++++++++++-------
 include/scsi/libiscsi.h  |    2 ++
 3 files changed, 42 insertions(+), 9 deletions(-)

--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -933,10 +933,17 @@ static void iscsi_sw_tcp_session_destroy
 	if (WARN_ON_ONCE(session->leadconn))
 		return;
=20
+	iscsi_session_remove(cls_session);
+	/*
+	 * Our get_host_param needs to access the session, so remove the
+	 * host from sysfs before freeing the session to make sure userspace
+	 * is no longer accessing the callout.
+	 */
+	iscsi_host_remove(shost);
+
 	iscsi_tcp_r2tpool_free(cls_session->dd_data);
-	iscsi_session_teardown(cls_session);
=20
-	iscsi_host_remove(shost);
+	iscsi_session_free(cls_session);
 	iscsi_host_free(shost);
 }
=20
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2892,17 +2892,32 @@ dec_session_count:
 }
 EXPORT_SYMBOL_GPL(iscsi_session_setup);
=20
-/**
- * iscsi_session_teardown - destroy session, host, and cls_session
- * @cls_session: iscsi session
+/*
+ * issi_session_remove - Remove session from iSCSI class.
  */
-void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
+void iscsi_session_remove(struct iscsi_cls_session *cls_session)
 {
 	struct iscsi_session *session =3D cls_session->dd_data;
-	struct module *owner =3D cls_session->transport->owner;
 	struct Scsi_Host *shost =3D session->host;
=20
 	iscsi_remove_session(cls_session);
+	/*
+	 * host removal only has to wait for its children to be removed from
+	 * sysfs, and iscsi_tcp needs to do iscsi_host_remove before freeing
+	 * the session, so drop the session count here.
+	 */
+	iscsi_host_dec_session_cnt(shost);
+}
+EXPORT_SYMBOL_GPL(iscsi_session_remove);
+
+/**
+ * iscsi_session_free - Free iscsi session and it's resources
+ * @cls_session: iscsi session
+ */
+void iscsi_session_free(struct iscsi_cls_session *cls_session)
+{
+	struct iscsi_session *session =3D cls_session->dd_data;
+	struct module *owner =3D cls_session->transport->owner;
=20
 	iscsi_pool_free(&session->cmdpool);
 	kfree(session->password);
@@ -2920,10 +2935,19 @@ void iscsi_session_teardown(struct iscsi
 	kfree(session->discovery_parent_type);
=20
 	iscsi_free_session(cls_session);
-
-	iscsi_host_dec_session_cnt(shost);
 	module_put(owner);
 }
+EXPORT_SYMBOL_GPL(iscsi_session_free);
+
+/**
+ * iscsi_session_teardown - destroy session and cls_session
+ * @cls_session: iscsi session
+ */
+void iscsi_session_teardown(struct iscsi_cls_session *cls_session)
+{
+	iscsi_session_remove(cls_session);
+	iscsi_session_free(cls_session);
+}
 EXPORT_SYMBOL_GPL(iscsi_session_teardown);
=20
 /**
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -401,6 +401,8 @@ extern int iscsi_target_alloc(struct scs
 extern struct iscsi_cls_session *
 iscsi_session_setup(struct iscsi_transport *, struct Scsi_Host *shost,
 		    uint16_t, int, int, uint32_t, unsigned int);
+void iscsi_session_remove(struct iscsi_cls_session *cls_session);
+void iscsi_session_free(struct iscsi_cls_session *cls_session);
 extern void iscsi_session_teardown(struct iscsi_cls_session *);
 extern void iscsi_session_recovery_timedout(struct iscsi_cls_session *);
 extern int iscsi_set_param(struct iscsi_cls_conn *cls_conn,


Patches currently in stable-queue which might be from shivani.agarwal@broad=
com.com are

queue-5.10/usb-xhci-move-link-chain-bit-quirk-checks-into-one-helper-functi=
on.patch
queue-5.10/crypto-af_alg-zero-initialize-memory-allocated-via-sock_kmalloc.=
patch
queue-5.10/rdma-core-fix-kasan-slab-use-after-free-read-in-ib_register_devi=
ce-problem.patch
queue-5.10/ovl-use-buf-flexible-array-for-memcpy-destination.patch
queue-5.10/cpufreq-scmi-fix-null-ptr-deref-in-scmi_cpufreq_get_rate.patch
queue-5.10/drm-vmwgfx-fix-a-null-ptr-access-in-the-cursor-snooper.patch
queue-5.10/scsi-iscsi_tcp-fix-uaf-during-logout-when-accessing-the-shost-ip=
address.patch
queue-5.10/usb-xhci-apply-the-link-chain-quirk-on-nec-isoc-endpoints.patch
queue-5.10/scsi-iscsi-move-pool-freeing.patch

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
2026010840-comment-unviable-dc9a%40gregkh.
