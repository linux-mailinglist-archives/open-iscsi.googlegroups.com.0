Return-Path: <open-iscsi+bncBDTZTRGMXIFBBIUPYTXQKGQEYJNY7QQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 089CF11AF77
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 16:13:40 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id v126sf17519003ywf.7
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 07:13:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576077218; cv=pass;
        d=google.com; s=arc-20160816;
        b=x3lK+ERMF5v+5fCaryk0o60+RCvKyXY6mjCkiHKG69mix2KBunya3Qluqer5P4uEzL
         mPOojtgOv/dd79VQXt/vLr+/4YSByQQEufm2yt7upWZvWI827cV7YgNGWEm//2wBTtOG
         4hLFmRCR9w7BaqYtjUrvx4uEaOK5N5OJWGE0juP3S3PKjzszYL5t/gL/wFEKa8QZTgXl
         1DRQPOLwybRiRiuQxpPCUqN4GRbDFhKTgMoZiMPBlpp/NZNtAUkQkDL65Jel6qT5ssGc
         Mj5lxSLJ3yVyKxMtOhvSdvyW68O0qeaTLY/PxjETPbwi/nok2vRD8V2BoK/DI+s3uNcZ
         iElQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=IUUp7pvF7kJFwYYMWOyNBtYBKmfuVYW7R2IdOmWJPAY=;
        b=pgCnow8BteT7ZAUDH3OFmbuxxdXJzYZzIzJ+2KCkYy7T6E4g9CIEyo0wXMvQ8C6gMv
         l38lCkxD9ts8xPVOmOwRvdGIMaw69Ge7KLapkYUcL2eJSRNxKhJabBp+xFLQWAaQi2iQ
         l2MR5sJpRop0BfcpYkE3xdJeTIBbLGfaUf4aYVEHlxpn8Gdrbx5zpXYpMS87l43ZJU5V
         OgDnPqq1IuSWI47AsxfB2zEBKl0dW9LbD/3iJQGAfoHg1bnDTqkDhw3aSsPRnXkmvJqL
         zUrykjyo0TKwRvkiOErwsnHLYFLtgz9jO+uxckBrxvQRGYObBVM/+eoWzYGiRYDa1sGO
         f+jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sNgEhIXN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IUUp7pvF7kJFwYYMWOyNBtYBKmfuVYW7R2IdOmWJPAY=;
        b=aavVgR95MHFvHLN7SdSW5oe/cLANip3yBqRETJRbXVYnOL4YnXht0h3pZzV9sPUFCU
         kTlBg7NYOgPhSQTkMzb+oLD+HTvMi55P735jpWeGj4Ab5IYPiQazHmcsBc9liy7h1CJZ
         QK/h/0+4j4xsyo4+KRoVNhtv6XOSLrpywFWKd863R3YGzb1SeQF3fBro/ttfyvhnrOcj
         vBKJbOEZRFW8XEPge4Y/LAOgyRARA0Q0U8Na8x9vLcoNgFZb7+VI46DM8XVucsRPvvBt
         l+ovVArgFG3Jxt+jizSDof9B4PIRnoYzOacgXtPtzwhAvAKKWZmQDgHNHas7e6u+ASXU
         Zs7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IUUp7pvF7kJFwYYMWOyNBtYBKmfuVYW7R2IdOmWJPAY=;
        b=dEkKr5YmCIXUaSxzgUoIsc+WyrAekuw9r4L38f0qiL13JcB1N61vymmd7xoqDTRBcY
         6hQKR3y85G1fs1xK5DNy4kWRsuuS9ynUBFJGfhMvLXKjqm+dqAnm6ti8KjYkOkxyyneF
         NCxIN4opgV1asmrnJaDiczm4wM2XI1xDm2dfo5IB+ZU96aXNxadVONJtQJBzkDdiMUrK
         zasfrpLdQ/aa8azuhF5aagKwYTmHIu5KEUWQ0XhiIgbgEtGoq7nIzKmeef59oOp+30GC
         SX/ufqJVTaieQAECUhkuLJWzyiVCXwf5fzJXTkFyh4/FGW+Fr2XzdW0p0U13oe3KIdg+
         LC4g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWl2Qwfg2mH5KSDprYVqO3Kv7ZGs7o8BiUSIY+gDK+z6d0KFgks
	FFanCJT8cMbnBGARS0HjJPY=
X-Google-Smtp-Source: APXvYqxdeoefUFZ3xXqQKg8U3tsamNgRFpPpTs7ZUeAduWNR5tdS7JjLTo88tvMzPpGV2NaaSMYe8w==
X-Received: by 2002:a25:ef42:: with SMTP id w2mr284810ybm.146.1576077218618;
        Wed, 11 Dec 2019 07:13:38 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:694b:: with SMTP id e72ls370985ybc.0.gmail; Wed, 11 Dec
 2019 07:13:38 -0800 (PST)
X-Received: by 2002:a25:b3ce:: with SMTP id x14mr232867ybf.251.1576077218027;
        Wed, 11 Dec 2019 07:13:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576077218; cv=none;
        d=google.com; s=arc-20160816;
        b=ykT0uY0Lvnq+uKhQQDYYKs8c0Kuo2JwQHnDlHFzBQ+xjGgP64esrvj3Y31uUREmSTb
         BTGCz0GgxVypTgEgsXBeRneWal4PBWiXsbgShGKPMcXNKaQFxB4McWJQPNxaOOHkw9gt
         ud+eQ5X48zrIt9VT632PjsYflqft4dwwOYaqBG44oACUiaJpP70YymmvIkl5wNvvZ1Sk
         4lVgi+zSAvGBXwj7GZlQ4mQuzgzaV0tPdiE6XqmRdc5YV0xZiw36cOI+NY9N++zKZqv+
         ZtMCpVHS8PXFIRmJYY1QuQW0BUzO3KmpIefBVs76CKUfA1Rn/RL02AKD9OkNySlmCIoD
         wDrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DruQv7wS7vps5j/MLpMngPVAkfPszO560KHVxSuvt20=;
        b=pqkKXbnMYY9Ate5JXXmhvF/xpb726dTgfOJKwU7JEsd56hZlrucjDhaOukVzTNr2Ii
         0IAPG+6a4iZT9/sqSB4OChUpCZzf88QfQXULX1PQWYMXjyLIfqr+oK8quZH/dnb3rK/i
         VQ7Kfk5qfDuoIB/mgVdyUpH3SvYulBHUKG/JQq2AZHaOYMwSpEGJpHHNZjYYa4ZPaJMf
         k1dDeVAmXGwV3X5MfjYbQn1JJS7GG93S525F8knSJVv8Y5W6ESrgYvcYrJfG/aKYYUBO
         t9mSZk8Gbeo7lJpK+2zn2aLq7gaNKh78hSfSQzz0+Z9XbRFA5vhr5UsMnc7FxejAXRgG
         1zUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sNgEhIXN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r1si179906ybr.3.2019.12.11.07.13.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 07:13:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 04DAE24680;
	Wed, 11 Dec 2019 15:13:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Anatol Pomazau <anatol@google.com>,
	Frank Mayhar <fmayhar@google.com>,
	Bharath Ravi <rbharath@google.com>,
	Khazhimsel Kumykov <khazhy@google.com>,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 097/134] scsi: iscsi: Don't send data to unbound connection
Date: Wed, 11 Dec 2019 10:11:13 -0500
Message-Id: <20191211151150.19073-97-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211151150.19073-1-sashal@kernel.org>
References: <20191211151150.19073-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sNgEhIXN;       spf=pass
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

From: Anatol Pomazau <anatol@google.com>

[ Upstream commit 238191d65d7217982d69e21c1d623616da34b281 ]

If a faulty initiator fails to bind the socket to the iSCSI connection
before emitting a command, for instance, a subsequent send_pdu, it will
crash the kernel due to a null pointer dereference in sock_sendmsg(), as
shown in the log below.  This patch makes sure the bind succeeded before
trying to use the socket.

BUG: kernel NULL pointer dereference, address: 0000000000000018
 #PF: supervisor read access in kernel mode
 #PF: error_code(0x0000) - not-present page
PGD 0 P4D 0
Oops: 0000 [#1] SMP PTI
CPU: 3 PID: 7 Comm: kworker/u8:0 Not tainted 5.4.0-rc2.iscsi+ #13
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
[   24.158246] Workqueue: iscsi_q_0 iscsi_xmitworker
[   24.158883] RIP: 0010:apparmor_socket_sendmsg+0x5/0x20
[...]
[   24.161739] RSP: 0018:ffffab6440043ca0 EFLAGS: 00010282
[   24.162400] RAX: ffffffff891c1c00 RBX: ffffffff89d53968 RCX: 0000000000000001
[   24.163253] RDX: 0000000000000030 RSI: ffffab6440043d00 RDI: 0000000000000000
[   24.164104] RBP: 0000000000000030 R08: 0000000000000030 R09: 0000000000000030
[   24.165166] R10: ffffffff893e66a0 R11: 0000000000000018 R12: ffffab6440043d00
[   24.166038] R13: 0000000000000000 R14: 0000000000000000 R15: ffff9d5575a62e90
[   24.166919] FS:  0000000000000000(0000) GS:ffff9d557db80000(0000) knlGS:0000000000000000
[   24.167890] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   24.168587] CR2: 0000000000000018 CR3: 000000007a838000 CR4: 00000000000006e0
[   24.169451] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   24.170320] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   24.171214] Call Trace:
[   24.171537]  security_socket_sendmsg+0x3a/0x50
[   24.172079]  sock_sendmsg+0x16/0x60
[   24.172506]  iscsi_sw_tcp_xmit_segment+0x77/0x120
[   24.173076]  iscsi_sw_tcp_pdu_xmit+0x58/0x170
[   24.173604]  ? iscsi_dbg_trace+0x63/0x80
[   24.174087]  iscsi_tcp_task_xmit+0x101/0x280
[   24.174666]  iscsi_xmit_task+0x83/0x110
[   24.175206]  iscsi_xmitworker+0x57/0x380
[   24.175757]  ? __schedule+0x2a2/0x700
[   24.176273]  process_one_work+0x1b5/0x360
[   24.176837]  worker_thread+0x50/0x3c0
[   24.177353]  kthread+0xf9/0x130
[   24.177799]  ? process_one_work+0x360/0x360
[   24.178401]  ? kthread_park+0x90/0x90
[   24.178915]  ret_from_fork+0x35/0x40
[   24.179421] Modules linked in:
[   24.179856] CR2: 0000000000000018
[   24.180327] ---[ end trace b4b7674b6df5f480 ]---

Signed-off-by: Anatol Pomazau <anatol@google.com>
Co-developed-by: Frank Mayhar <fmayhar@google.com>
Signed-off-by: Frank Mayhar <fmayhar@google.com>
Co-developed-by: Bharath Ravi <rbharath@google.com>
Signed-off-by: Bharath Ravi <rbharath@google.com>
Co-developed-by: Khazhimsel Kumykov <khazhy@google.com>
Signed-off-by: Khazhimsel Kumykov <khazhy@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 7bedbe8777049..0bc63a7ab41c8 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -369,8 +369,16 @@ static int iscsi_sw_tcp_pdu_xmit(struct iscsi_task *task)
 {
 	struct iscsi_conn *conn = task->conn;
 	unsigned int noreclaim_flag;
+	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
+	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 	int rc = 0;
 
+	if (!tcp_sw_conn->sock) {
+		iscsi_conn_printk(KERN_ERR, conn,
+				  "Transport not bound to socket!\n");
+		return -EINVAL;
+	}
+
 	noreclaim_flag = memalloc_noreclaim_save();
 
 	while (iscsi_sw_tcp_xmit_qlen(conn)) {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191211151150.19073-97-sashal%40kernel.org.
