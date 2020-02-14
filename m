Return-Path: <open-iscsi+bncBDTZTRGMXIFBBFMUTPZAKGQEZVEZUEY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC2115E2E7
	for <lists+open-iscsi@lfdr.de>; Fri, 14 Feb 2020 17:25:58 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id f15sf2386718uap.4
        for <lists+open-iscsi@lfdr.de>; Fri, 14 Feb 2020 08:25:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697557; cv=pass;
        d=google.com; s=arc-20160816;
        b=kmRLvx6q+o0VyvMKyD2l8MIizaroDrDHAhbSu3W9Xpk5pD+tWA1KnmCtSD4N2aGi7E
         VTjbbyg6yRkN7NOGHiCWnCdacARKLu39jxNM3eN7gG3gO+UEShGerDtR9OvuJurDOPc5
         7/GyXolsASYam3Fw7RjsakpqKukTxOnOYLf9cESy+bLqNXEUQY836HEcBUZoSn7u+yuW
         KAeIK89LuT53Lx7K+BJoNBcc2HMFKGvWP+FwvBQrTVZFgijxQrVqnT6hoTx2oDIRpMcC
         KWsZJsr+iOAGojG0fHhH2RqeInJTDn0hqrc/K1fjPNHr79WkCY7vgZXvxCzez1VX8Yrb
         MFeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=/FyRBidQVWBLg+kuYXOfVFHVKgNzQSZB52+4HP/7qVc=;
        b=nZcbRHqnWvPA3RhHixPB2cCm1RxYMo1UCsIP9Qs6Ts3GPtXjU1QG+i19grVZ8YqVly
         rmdsPcWgGDj5mplr3dGEjnCoQ6BiyObqVHcdomQqgi4BVPEZ2oB3mLx5mSmSzNpwBKhm
         Cbk0J5QXwmJ3QpOuVxd6SDdzJpoIhRvvsF4B3fraW2aBTszvA2KYDSbT/Il/jU8ly5Ad
         uS1BraWj/aqL+Gi5pZ6Emy0TNrS4eN4xWIUun0DJyM6kbsIjbV/Nqvquh2lcP2CHAwit
         zBJrlFMMkgGN6sl5bgyDry0cVDXaA0sMn119v3hEZktp+K9o4iSaOLUU8zq2xHPlr09S
         +IQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v04QVEK2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/FyRBidQVWBLg+kuYXOfVFHVKgNzQSZB52+4HP/7qVc=;
        b=XSrQmpgvHdXw8oWUSaqFrrQHdpS0jVhRwrB9VP29gFK9a9+MMjxA386lI3e1n+kZ/y
         Of1Gdoe5p1lfUplwZt8rq3rz29Fak7Nr3L4EzTEnedO7xdkwkt4L6GVSrik48YCfhc44
         KCslNmFf+0xdeKpZ7J/Ily4i1CunWleSd0ihXHGPHDxnnvH+niMV7Im5GhfdzmlesTAJ
         Wk2CLboJxX4WjrTut4YXnkDu2IbjgsApWVxFty5cYGPPDYzneGOGflhb/2N/KUWC2R0M
         z9ZdqTqE/mJ7+LJFWeKzS3ukiVrYQX9lg78e9+00s3mQx+IawVT3Rhy6RyCDrAHafTka
         WsrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/FyRBidQVWBLg+kuYXOfVFHVKgNzQSZB52+4HP/7qVc=;
        b=AHE45bsdylEuukCf3EHoUpLPsoOmWBiu+1kFBGCe3d2phPnFn7ubAVKZnCwH8KqLrs
         iy4We+YqxhSGkDAxYhVmknZH4oHppDXxZB5SYt2UkvYX4QJdpQCYnxC+n4UdiiU/6hg/
         W8379YpRnBLezXggJTAsRHJE/RzjrTDdGfo7RPHCqTxZShlXJUuX5oygXoBwgMM70Sng
         /SQ/045lwXS1k3UnnKeAggDjxYG4mp6snRYOLkt9q7Hkel2/31kYoaUQR1sO6YJB2Iaz
         g7r2dcZ3zzAW2v9iVQpLXOc8ZzMTH57OjZBLhdldMi1iljo6AwCnPZIak0AKHmmchMbR
         /TsA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVyrjs/4Vbn4KBrPa3IyWE9C1OYNf1Jxix2oX/wZNCsvsLPpGCY
	m3dQ0mc2EvdjZr9HDsjZwhQ=
X-Google-Smtp-Source: APXvYqyMdMvXvxLRQystGpxADNWXOw8OzLbaIbRmkQ55xjau6v0g5zv9O7xW1OecBBoME/+MVGh9VA==
X-Received: by 2002:a67:8010:: with SMTP id b16mr1816304vsd.90.1581697557684;
        Fri, 14 Feb 2020 08:25:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:4e02:: with SMTP id g2ls174036uah.0.gmail; Fri, 14 Feb
 2020 08:25:57 -0800 (PST)
X-Received: by 2002:ab0:133:: with SMTP id 48mr2034784uak.38.1581697557288;
        Fri, 14 Feb 2020 08:25:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697557; cv=none;
        d=google.com; s=arc-20160816;
        b=FxeSMmty2b2CH3hhz/tdTnbyzUbEJ/rmtrvIM7vBQswTFWo8S+pLPCiDpOOPlKPnk3
         Bn0Cx9gEutO0Oj8l4V5ZsqZr2US6jHu20T0t+6jXs+gXH+lQLwYHsSSancghT2/wb7u6
         L8PBUDKNgpgQ2rFnGbJq0cTO/m6d4X1zvEkTIwGkQmko3s0qWtOssARW+Gg14v2Gc67w
         Rp2ONtcHP7MiPL1DdsMbMAR5dGamuaykDsTidznerKpkHYcuApIrcx+EPja5pNSw89OO
         chvaskzTiq//5Zfb7B8fSeQ4Jlb6OQpBuCl6+7bzwA+950FThGVtPxCiWXaQk+LSuXjv
         Sdbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mMvC/5SJw6o9ABu8/CbC/+MeB1JR/Vni9SPFQH1AALs=;
        b=n8ywXHYGtBh3g01DWiq/Y496kLAX3PlIhgGZyW7hMZ6Kp2FP3HLBdCSf9LZOkWfy7M
         mAqqE31xH/5j4XWZb85iHjGUVl42NvkwqOXNbWkKDtIdQ4awJNCTOz0j3z2jobBQbQGO
         aMl0xHucET+8QWesF9OGi/2iTjVwBHO1MijesTtKhoev/l7k+0vHDAKQRj+wTUXVovDR
         f/ZKO5XaOlToTiOhJVh8Q8wS+SNNpfT0Z4G5Lr7ieMgLudEoLbJKj6xWZpvBnKCsQ2UR
         PPdCgT0hh2DkcnftJ6125lChD/9FiF25C5cJXCcjBXK1QkuiLkwL6vxi2Q7oH7a1cuag
         x9ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v04QVEK2;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n5si223307vsm.0.2020.02.14.08.25.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:25:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 02125247DB;
	Fri, 14 Feb 2020 16:25:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Black <nlb@google.com>,
	Salman Qazi <sqazi@google.com>,
	Junho Ryu <jayr@google.com>,
	Khazhismel Kumykov <khazhy@google.com>,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 073/100] scsi: iscsi: Don't destroy session if there are outstanding connections
Date: Fri, 14 Feb 2020 11:23:57 -0500
Message-Id: <20200214162425.21071-73-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214162425.21071-1-sashal@kernel.org>
References: <20200214162425.21071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=v04QVEK2;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

From: Nick Black <nlb@google.com>

[ Upstream commit 54155ed4199c7aa3fd20866648024ab63c96d579 ]

A faulty userspace that calls destroy_session() before destroying the
connections can trigger the failure.  This patch prevents the issue by
refusing to destroy the session if there are outstanding connections.

------------[ cut here ]------------
kernel BUG at mm/slub.c:306!
invalid opcode: 0000 [#1] SMP PTI
CPU: 1 PID: 1224 Comm: iscsid Not tainted 5.4.0-rc2.iscsi+ #7
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
RIP: 0010:__slab_free+0x181/0x350
[...]
[ 1209.686056] RSP: 0018:ffffa93d4074fae0 EFLAGS: 00010246
[ 1209.686694] RAX: ffff934efa5ad800 RBX: 000000008010000a RCX: ffff934efa5ad800
[ 1209.687651] RDX: ffff934efa5ad800 RSI: ffffeb4041e96b00 RDI: ffff934efd402c40
[ 1209.688582] RBP: ffffa93d4074fb80 R08: 0000000000000001 R09: ffffffffbb5dfa26
[ 1209.689425] R10: ffff934efa5ad800 R11: 0000000000000001 R12: ffffeb4041e96b00
[ 1209.690285] R13: ffff934efa5ad800 R14: ffff934efd402c40 R15: 0000000000000000
[ 1209.691213] FS:  00007f7945dfb540(0000) GS:ffff934efda80000(0000) knlGS:0000000000000000
[ 1209.692316] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 1209.693013] CR2: 000055877fd3da80 CR3: 0000000077384000 CR4: 00000000000006e0
[ 1209.693897] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 1209.694773] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 1209.695631] Call Trace:
[ 1209.695957]  ? __wake_up_common_lock+0x8a/0xc0
[ 1209.696712]  iscsi_pool_free+0x26/0x40
[ 1209.697263]  iscsi_session_teardown+0x2f/0xf0
[ 1209.698117]  iscsi_sw_tcp_session_destroy+0x45/0x60
[ 1209.698831]  iscsi_if_rx+0xd88/0x14e0
[ 1209.699370]  netlink_unicast+0x16f/0x200
[ 1209.699932]  netlink_sendmsg+0x21a/0x3e0
[ 1209.700446]  sock_sendmsg+0x4f/0x60
[ 1209.700902]  ___sys_sendmsg+0x2ae/0x320
[ 1209.701451]  ? cp_new_stat+0x150/0x180
[ 1209.701922]  __sys_sendmsg+0x59/0xa0
[ 1209.702357]  do_syscall_64+0x52/0x160
[ 1209.702812]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[ 1209.703419] RIP: 0033:0x7f7946433914
[...]
[ 1209.706084] RSP: 002b:00007fffb99f2378 EFLAGS: 00000246 ORIG_RAX: 000000000000002e
[ 1209.706994] RAX: ffffffffffffffda RBX: 000055bc869eac20 RCX: 00007f7946433914
[ 1209.708082] RDX: 0000000000000000 RSI: 00007fffb99f2390 RDI: 0000000000000005
[ 1209.709120] RBP: 00007fffb99f2390 R08: 000055bc84fe9320 R09: 00007fffb99f1f07
[ 1209.710110] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000038
[ 1209.711085] R13: 000055bc8502306e R14: 0000000000000000 R15: 0000000000000000
 Modules linked in:
 ---[ end trace a2d933ede7f730d8 ]---

Link: https://lore.kernel.org/r/20191226203148.2172200-1-krisman@collabora.com
Signed-off-by: Nick Black <nlb@google.com>
Co-developed-by: Salman Qazi <sqazi@google.com>
Signed-off-by: Salman Qazi <sqazi@google.com>
Co-developed-by: Junho Ryu <jayr@google.com>
Signed-off-by: Junho Ryu <jayr@google.com>
Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c            |  4 ++++
 drivers/scsi/scsi_transport_iscsi.c | 26 +++++++++++++++++++++++---
 2 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index fccb8991bd5b7..64a49dccb0b63 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -872,6 +872,10 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
 {
 	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
+	struct iscsi_session *session = cls_session->dd_data;
+
+	if (WARN_ON_ONCE(session->leadconn))
+		return;
 
 	iscsi_tcp_r2tpool_free(cls_session->dd_data);
 	iscsi_session_teardown(cls_session);
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index ab32e60736424..20cf01d6ded7e 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2965,6 +2965,24 @@ iscsi_set_path(struct iscsi_transport *transport, struct iscsi_uevent *ev)
 	return err;
 }
 
+static int iscsi_session_has_conns(int sid)
+{
+	struct iscsi_cls_conn *conn;
+	unsigned long flags;
+	int found = 0;
+
+	spin_lock_irqsave(&connlock, flags);
+	list_for_each_entry(conn, &connlist, conn_list) {
+		if (iscsi_conn_get_sid(conn) == sid) {
+			found = 1;
+			break;
+		}
+	}
+	spin_unlock_irqrestore(&connlock, flags);
+
+	return found;
+}
+
 static int
 iscsi_set_iface_params(struct iscsi_transport *transport,
 		       struct iscsi_uevent *ev, uint32_t len)
@@ -3539,10 +3557,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		break;
 	case ISCSI_UEVENT_DESTROY_SESSION:
 		session = iscsi_session_lookup(ev->u.d_session.sid);
-		if (session)
-			transport->destroy_session(session);
-		else
+		if (!session)
 			err = -EINVAL;
+		else if (iscsi_session_has_conns(ev->u.d_session.sid))
+			err = -EBUSY;
+		else
+			transport->destroy_session(session);
 		break;
 	case ISCSI_UEVENT_UNBIND_SESSION:
 		session = iscsi_session_lookup(ev->u.d_session.sid);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200214162425.21071-73-sashal%40kernel.org.
