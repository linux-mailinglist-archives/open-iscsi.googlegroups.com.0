Return-Path: <open-iscsi+bncBDQ7VBVATUHBB4HBS6FQMGQEHDQRYXY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 3903542ADD9
	for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 22:32:50 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id c19-20020a056830001300b00546faa88f0csf352680otp.13
        for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 13:32:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634070769; cv=pass;
        d=google.com; s=arc-20160816;
        b=o9E/+FyzCZcoweGNbBbkQZPXPNsBG4OpKVfg//AHgKTzPfs8XEaqOoWUoAZcj5b4Gu
         CEpLr7Oy9Iz2gh55O2RVlD5i1SEQiK2R6KMu71tk4dK/tFL0lg68rP/jQEBnKR3w5OcG
         0/OOwa4N32oIXZSRh6fjiXSzR7hT27Vt+p0kRU+lZKRahLkkKoJyu8s2jfTFbvcHeyo/
         mBAyDgBr6h5HsCV41TdCEhlye3Q9peU/lFig+NxxsKNM857tPjXHKSka15/xV2CW8mJS
         PYmMkARtzRZbR6hRal6xgatLGX8yIaUTLrsthqAW3BAPVPgk7ZNVkSrOFR9Q6XSNEEvN
         Gudg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=DZoHC3DnYIH6Lf7Z1gJfsY0ph+GDibMZHDjtMKUy33U=;
        b=G1rq6eXsdKVowUHk7/3nY8OxXl8vzoj6b4z//bqOBM9TRr3maKJ2SCJmogaVGzlrRc
         YV9ZrXtfA2DTC0fg3hOP9HtWI8pVbcOuSmkAw+slTMHyJzv2aX9TseYJoZGFTM5EuA7W
         qSk+CfVurxDyzab+KykGg85XCdXLTOAJ4P3wkVpgvomK8qowC64DGqoS6Yo2WOkck9Xu
         M/bKcmfX2YA6IO0WIz2Oen3M85HYMjOO5VSf35VcDWGnoYJDWx2ZZMbC2wvWwrxm0rML
         bhSgHXUrPs+UFjR1EV6pVHm+p9xKyaplPMSQoyqRPTSZhMG3URxvyZd+AwtI1VHHRyjO
         ZPMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@smartx-com.20210112.gappssmtp.com header.s=20210112 header.b=hzOrD2V4;
       spf=neutral (google.com: 2607:f8b0:4864:20::434 is neither permitted nor denied by best guess record for domain of fengli@smartx.com) smtp.mailfrom=fengli@smartx.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DZoHC3DnYIH6Lf7Z1gJfsY0ph+GDibMZHDjtMKUy33U=;
        b=ftmtRE0HX9mLiZ4REtLxPis7vP7tUTLpPqZk0IMgawEvI8M4AI9AlU5aLgMgMuFUJ/
         ZmN+vrSTzAira1EknkUcD2gIe9k2mz9gyEjRAWTMb+M2mDtXubniAUMyvYZ7FWWzoNYv
         MfMuKBtX8+l5mloCfHdj4O8wVHtSGENKp3JzzcZ4cPjL2hR86e6ruFL16k8tnNKZwzsX
         ZX1V+vZKydzJQggOPYiTGs/dkHXjEC7ra9VXPeMHPF0apLjjgm4gQ7VMgRae7lirCJ1G
         5OBDCeK5brvV/U8FZsDiz1UGIrXWP+V56PYG9IfRy9z/JVVqr3ZV25WxeID7kDNEz1wB
         55YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DZoHC3DnYIH6Lf7Z1gJfsY0ph+GDibMZHDjtMKUy33U=;
        b=tkWZjjjMQGzd6I2as0nGQeBXOmlMOIOzwaFi0LKhorbJ9QnL/E5UkBYRuHnpeZ8Ghq
         nuZBCPgbTIpL+uXa2MpWWjumksjy2WnHbx9wtV1mRlJjALao8ZlDEB4JAbLGbYSc4MnP
         Uo1nCi67OzILGzWtw+j7J9XIY5XozcoqAWaS+oIfN07SO93/duqCcIyO540QWhatjVYm
         lIwzfSqJBNCLFANEwzBtI8nl9f1ZZkcsHvZNKtUUhOt6BWKamjF54iZvmrnNhfO+On7k
         i3MMOAGEiFGGlniw+3tpN/S70y+CKVvuvWxp97mVKbKvgEM/WvjAIFc7MWrJ95ejOU3c
         01Lg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533oZN9ikUf8G+mLsqKh6WjrwFBcCny4QNGIiup46lDNHg284H99
	IgCotAELB1erdMLykh+3Or4=
X-Google-Smtp-Source: ABdhPJySOn/4wrKDlTLBQkqpMrFGyJTKGppX7UHRdmpBzpgT2QJo6njX1IKfEXzyxA/88KGJkBzWew==
X-Received: by 2002:aca:1e04:: with SMTP id m4mr5096182oic.67.1634070769011;
        Tue, 12 Oct 2021 13:32:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:df56:: with SMTP id w83ls43334oig.3.gmail; Tue, 12 Oct
 2021 13:32:48 -0700 (PDT)
X-Received: by 2002:aca:44c4:: with SMTP id r187mr5178567oia.68.1634070768724;
        Tue, 12 Oct 2021 13:32:48 -0700 (PDT)
Received: by 2002:aca:5d86:0:b0:276:a1ca:5736 with SMTP id 5614622812f47-2909865c629msb6e;
        Sun, 10 Oct 2021 00:20:06 -0700 (PDT)
X-Received: by 2002:a17:90b:3148:: with SMTP id ip8mr22162534pjb.62.1633850406307;
        Sun, 10 Oct 2021 00:20:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633850406; cv=none;
        d=google.com; s=arc-20160816;
        b=RtIEPQJZwfiP4Thv9Hm0x6BaMFs+W0ijR0Q4jGka7+AXnvnMA0mg6nnMNXsumKmthG
         2rn43+0lT6KdfSKIGONY6nqQFX2FVSbSRVoCuW3KRTDX+hY+7vTYRO2y9MU8d9QCntJ5
         k/d0iRDjtPoI2FUFlkGtlct0NmqfB/O2XR3mDV3f79b+Is4VIUMu4HAmpG3Ag+IPiiPC
         kNZfdHEbGv7JlgzLS1VXn279PyHc0AVcwS9jw+zamLH9Po37NkRdo+D2yxANZ1wjm49o
         0MeA9qJrUNZlHNISgdov0+9eAohGLlq0FCoivUfn6nA9wjkbyDfg2ixSbeINq1m0LC/z
         tudQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=wt8NCphr5LPTSGm5kELuO+yCdiTjLhoziCfmEiQX52A=;
        b=w8EK0+oDPi8gQ78O2/+itXy3NKWetHn0nz39a0lrAowS/WtDmgPVufSB0SdoFQfQ/K
         oypHxNxw4Y5dxifAC2WnbqDEZR13GyBpxNf1bHr2byjIhcJIzkxxluMDaNVF85q0VLSc
         jQ4yKI3d2WJVgZP3zImJIKkL+gnLHoRT+JaXg7SME1Nkx3I+RFQINFLRotog3AD0JeLr
         8Rsok/JoDKuSnZ0xSaop9DvGioobBuZ3YSqv+VFmiKScRwYVH22i04tEgLUgYKbY0ZTO
         IQq8PemaQnPECtVSvJ40/VagNyMohDIcVkjUl3RBI+8HjCaUoIMJxiL3lROYp4hSvMl0
         oABA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@smartx-com.20210112.gappssmtp.com header.s=20210112 header.b=hzOrD2V4;
       spf=neutral (google.com: 2607:f8b0:4864:20::434 is neither permitted nor denied by best guess record for domain of fengli@smartx.com) smtp.mailfrom=fengli@smartx.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id y2si1745438pjp.2.2021.10.10.00.20.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Oct 2021 00:20:06 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::434 is neither permitted nor denied by best guess record for domain of fengli@smartx.com) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id x130so2993329pfd.6
        for <open-iscsi@googlegroups.com>; Sun, 10 Oct 2021 00:20:06 -0700 (PDT)
X-Received: by 2002:a62:84d5:0:b0:44d:7cf:e6dc with SMTP id k204-20020a6284d5000000b0044d07cfe6dcmr3375469pfd.12.1633850405728;
        Sun, 10 Oct 2021 00:20:05 -0700 (PDT)
Received: from 64-217.. ([103.97.201.33])
        by smtp.gmail.com with ESMTPSA id w13sm2384251pfc.10.2021.10.10.00.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Oct 2021 00:20:05 -0700 (PDT)
From: Li Feng <fengli@smartx.com>
To: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	open-iscsi@googlegroups.com (open list:ISCSI),
	linux-scsi@vger.kernel.org (open list:ISCSI),
	linux-kernel@vger.kernel.org (open list)
Cc: Li Feng <fengli@smartx.com>
Subject: [PATCH] iscsi_tcp: fix the NULL pointer dereference
Date: Sun, 10 Oct 2021 15:19:47 +0800
Message-Id: <20211010071947.2002025-1-fengli@smartx.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: fengli@smartx.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@smartx-com.20210112.gappssmtp.com header.s=20210112
 header.b=hzOrD2V4;       spf=neutral (google.com: 2607:f8b0:4864:20::434 is
 neither permitted nor denied by best guess record for domain of
 fengli@smartx.com) smtp.mailfrom=fengli@smartx.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

iscsi_sw_tcp_conn_set_param should check the pointer before using it.

I got this ops when starting my os:
[   27.158355] sd 27:0:0:1: [sdco] Mode Sense: 83 00 00 08
[   27.158377] scsi 27:0:0:3: Direct-Access     ZBS      VOLUME           0000 PQ: 0 ANSI: 5
[   27.167665]  connection39:0: detected conn error (1020)
[   27.174681] BUG: kernel NULL pointer dereference, address: 0000000000000020
[   27.174706] #PF: supervisor read access in kernel mode
[   27.174719] #PF: error_code(0x0000) - not-present page
[   27.174731] PGD 0 P4D 0
[   27.174739] Oops: 0000 [#1] SMP NOPTI
[   27.174749] CPU: 8 PID: 1044 Comm: iscsid Not tainted 5.11.12-300.fc34.x86_64 #1
[   27.174767] Hardware name: VMware, Inc. VMware Virtual Platform/440BX Desktop Reference Platform, BIOS 6.00 12/12/2018
[   27.174790] RIP: 0010:iscsi_sw_tcp_conn_set_param+0x6a/0x80 [iscsi_tcp]
[   27.174807] Code: 85 d2 74 23 48 89 83 e0 00 00 00 31 c0 5b 5d c3 e8 bb 21 fb ff 31 c0 5b 5d c3 48 89 ef 5b 48 89 d6 5d e9 99 62 ff ff 48 8b 03 <48> 8b 40 20 48 8b 80 a0 00 00 00 eb cd 66 0f 1f 84 00 00 00 00 00
[   27.174847] RSP: 0018:ffffba8a46103b90 EFLAGS: 00010246
[   27.174860] RAX: 0000000000000000 RBX: ffff98cbf22766b8 RCX: ffffffffc096d6b9
[   27.174877] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff98cbdbcb6049
[   27.174893] RBP: ffff98cbf2276348 R08: 00000000000000ff R09: 000000000000000a
[   27.174909] R10: 000000000000000a R11: f000000000000000 R12: ffff98cbdbcb6010
[   27.174925] R13: ffff98cbdbcb6048 R14: ffff98cbf2279800 R15: 0000000000000414
[   27.174941] FS:  00007fa88bab7cc0(0000) GS:ffff98d1e0000000(0000) knlGS:0000000000000000
[   27.175188] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   27.175441] CR2: 0000000000000020 CR3: 000000022522c000 CR4: 00000000003506e0
[   27.175734] Call Trace:
[   27.176003]  iscsi_if_rx+0xdda/0x1adc [scsi_transport_iscsi]
[   27.176291]  ? __kmalloc_node_track_caller+0xec/0x280
[   27.176585]  ? netlink_sendmsg+0x30c/0x440
[   27.176880]  netlink_unicast+0x1d3/0x2a0
[   27.177191]  netlink_sendmsg+0x22a/0x440
[   27.177494]  sock_sendmsg+0x5e/0x60
[   27.177799]  ____sys_sendmsg+0x22c/0x270
[   27.178107]  ? import_iovec+0x17/0x20
[   27.178422]  ? sendmsg_copy_msghdr+0x59/0x90
[   27.178747]  ? _copy_from_user+0x3c/0x80
[   27.179072]  ___sys_sendmsg+0x81/0xc0
[   27.179402]  ? ___sys_recvmsg+0x86/0xe0
[   27.179736]  ? handle_mm_fault+0x113f/0x1970
[   27.180076]  ? enqueue_hrtimer+0x32/0x70
[   27.180422]  __sys_sendmsg+0x49/0x80
[   27.180778]  do_syscall_64+0x33/0x40
[   27.181132]  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Li Feng <fengli@smartx.com>
---
 drivers/scsi/iscsi_tcp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 1bc37593c88f..2ec1405d272d 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -724,6 +724,8 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
 		break;
 	case ISCSI_PARAM_DATADGST_EN:
 		iscsi_set_param(cls_conn, param, buf, buflen);
+		if (!tcp_sw_conn || !tcp_sw_conn->sock)
+			return -ENOTCONN;
 		tcp_sw_conn->sendpage = conn->datadgst_en ?
 			sock_no_sendpage : tcp_sw_conn->sock->ops->sendpage;
 		break;
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20211010071947.2002025-1-fengli%40smartx.com.
