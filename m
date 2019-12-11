Return-Path: <open-iscsi+bncBDTZTRGMXIFBB5UVYTXQKGQEPK4YD4I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BE511B0FF
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 16:27:52 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id y11sf11713298pjr.23
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 07:27:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576078071; cv=pass;
        d=google.com; s=arc-20160816;
        b=BrM8HAcILvm0mGq8uc9IQDDYLPRVSp5IJ8sgfManNkspUjGwtjgO/jkbsIvPV7WK7x
         k/7Ryh40RTCpkXKDnPeATtZMEYw/oiIhBUtrOYPsDh2YZkGOaIz4i/rA9xyOJgVmG1zS
         A2tC1vOq2OWrzd/K2ZnPGcK443F/itD6G0bry8PMPbGu37fulGj7T2mdDYplRNBFbbN7
         9IBbvKaPZugsVHqZJqXPWcwPb+8mbosDBU0oOEuiC+OITHOS+q1eg8j8mnT7bq9mki7H
         uavF9F9Nrrg99erQ9WfCcB7t9srXIciZZK2V96rTRNSDZGjtsMhdijMu/wmtBXuH6LTd
         o5Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=zFArU1YJNsUTA3LPowiAo4bdp2mVVuS8GgQpk5KggsY=;
        b=waB37M5q5lJ9C6TfzR7uFhHH+NouaWDtEEY9+LoB/ZmgoLfAorGQ0TiGtkc/rOpWW4
         9JQUpQZU97Vif5qm0S4FTCoCLHle2DrvTNPrGOpndnl2g4B34DUkgNRgLqprivogtg20
         ltpgwh0kcVffi4RKSuIP0GgPl52wf2QHnklCfynQyV4F4zrW6yMYXITGF1GAuuHJM7JE
         m7g19EeqojuKH/+Ee4WfArpHQOkmK1c/k4SG+4s1nl+58xOKy0jFetLo+4nmPhxhGrCg
         gpsdRRa3yfiTdhMJUAg3+5zvXtz6mFcJPwYygvq3oSb0CAbN0AxWchV/2uH2xRj+hmLo
         gRkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DOc0jvUr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zFArU1YJNsUTA3LPowiAo4bdp2mVVuS8GgQpk5KggsY=;
        b=qWW6GP+eAd5rHOKR3fZXgw3TdaPHQ19AKbn6f9Zze+GUIEiuHSYFHTe+oWJ2M63bUh
         0mtXQ3/P9mHtcsFo8mhMLUlQMTnqs2hKwMspKvi/0QnFmVl93tiQAO6mEPf22O/F/Tm9
         5YdFXLBPxp9e8MHh1i3O1Eq4ZyhMek2IaOtHN4gx2ftPjsMj+W1mbk7p1Qm8NMMNBXau
         NPCUIkB1jQc/0F306KHoVj+DjCbrqCh9z/0ZRf6G/JNtY816BlZWHtPvhd2o+DiA6nsS
         hTl0R7InstbuyAkaa7VXuR/sy6FQvKFRiJuq0wI095wKCJEqKPLxb17y3dkHFR7Ow77f
         Y0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zFArU1YJNsUTA3LPowiAo4bdp2mVVuS8GgQpk5KggsY=;
        b=iktLLupyX4jdjYlyPTay9CFJKt0gfonfiWvMuuPRBW7IORsaQyfiHG7YXRMy6v64yv
         Y97XoC7spMVxzgAr/1JJ82dJ4898fFWhnPJY/2aPOOhtaiVUNnJ24KfB7UU/xM6bDvwn
         rynu0ZKMyDERQyJyhl0zutCuhh3IPYnGk2qtVfFDadNPmB5yDeXDwAs4LnestaExQ3Fs
         ynqxb/26LpF4AWJ1ex/9QUTx4l7hw2Zwtqa5/SWe5t0jgtG3iNfiMZPhUkGAr5WBRU07
         Vq+q0hnYUXh36nZkPjvCOYGkWok1cyLqw2DYt8oz6XvSwKEHfrp6ig1REvn4jlk9VZDj
         fvcg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWAWukoxoToCu9ydj3FDtPFQG6tMdYpVBc5Vjb8EVcrOz3gupuG
	q7Li4LBwv8492w4nKHo09ho=
X-Google-Smtp-Source: APXvYqw7dvqzTusPOQvWXWKwTBk3uGXzKlBdxZ6T6c/ZQQpkMLjfzm1ITj0XIihqYJVwAR6G1fbmVw==
X-Received: by 2002:a17:902:b208:: with SMTP id t8mr3973634plr.38.1576078070977;
        Wed, 11 Dec 2019 07:27:50 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:ad46:: with SMTP id w6ls639965pjv.4.gmail; Wed, 11
 Dec 2019 07:27:50 -0800 (PST)
X-Received: by 2002:a17:902:9005:: with SMTP id a5mr4022786plp.194.1576078070500;
        Wed, 11 Dec 2019 07:27:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576078070; cv=none;
        d=google.com; s=arc-20160816;
        b=VkrjtthRD6Y4JY3g7FZYzMGW6mRP1ZcE6I/XQg358TGUmIwffESgIJE/CoBsW0RIVx
         A0sT02edMLHJ2pdJ2NiLn0JDjfnUadl5AMPC68mW84tfCYySF1aJUQLLgMbVq/3mC7qZ
         XYf2JKNf/m2IxdR/u53D87RhX0e+0VvC1/MDY02NrzPeuio+8NQC5Uos5SG6L/cgp8Er
         A0w6tIYfVcoFPMfRcGVay8polxvwOBI/xQldiuWxX4d4614LjT7reCtCjWLW5NRcdR/z
         thxL3J7fvhIfsArUyZStZ862gTHB0mUFYsvWAKdzqh2cg5O4lGH4BKMB1NQJOHsKVP4/
         mK4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1N1aRuAyKZXAxeRAKU2W5zOXmm7xcvaQUXfCAztPxoM=;
        b=qBZsVET81HR+WUrAYmaXITy2vuA+tZrxzSobbqSId1xgwtyf2xE85OivQKEVpWnp2u
         e1Gd8/g60KqDEFYqNRXIvSOuoIV9jF2AQAp2TL5noenpguIUhveZMMRLSDR6RUMnU0yj
         dgkBoAjGLGf27LTHH/lbjbNiLpPbP+tf6rreKh3md3PZlKW3qN8Om3eaXgV62KarQd1y
         aQqxRL0g5BrEg7sZ4at6MvcJRnTpwgZYms1ZFT/9ox1Cy3KTw2I5hVLD1sxRJp8XMK7S
         6J3swKlp5jWEC98K5lepaVuGvk9zY1dIr0AecqpkNMv/YVFQP450peT2dikucLrChMZ/
         /pEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DOc0jvUr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f23si86660plr.0.2019.12.11.07.27.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 07:27:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 208F524654;
	Wed, 11 Dec 2019 15:27:49 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 61/79] scsi: iscsi: Don't send data to unbound connection
Date: Wed, 11 Dec 2019 10:26:25 -0500
Message-Id: <20191211152643.23056-61-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211152643.23056-1-sashal@kernel.org>
References: <20191211152643.23056-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DOc0jvUr;       spf=pass
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
index 23354f206533b..55181d28291e7 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -374,8 +374,16 @@ static int iscsi_sw_tcp_pdu_xmit(struct iscsi_task *task)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191211152643.23056-61-sashal%40kernel.org.
