Return-Path: <open-iscsi+bncBDTZTRGMXIFBBT4WYTXQKGQELTJXYRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B15211B127
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 16:29:21 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id x189sf12869207pgd.9
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 07:29:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576078159; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z1dsh5E8g7GJksy5CrzwkkRb04olfnTOiVtJYKRWcTMglbBkyMzZx+WbiO8hsZS/X0
         wZzSBHlTEGrzSWmQQDoJnNfli5m2fp69v06JVI1hB48cClTSKd9kjZd6crx2ebzWkpWy
         a77H7xV+bNsi+yq7oRI3P3qM9WY931GLhnt5JjLn9ACf7A6guPqJG3RSJpXvMHHBTFJC
         AnbF6wVP5xGQLVsJ3iNC7p3nz4tEzKB2lJxjX0cwAVuSZaE+xFxwLhnK40sO11ISnrYU
         DvMEfSsW39/DP8RpNjG54Nw2k7r4mXJnfVI96Rk0LjVBIvMclCYRktDhuFdUSkAS+BiL
         460w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=RaELzAGzZVYpdrkCIGlTy3caZRI3MYCpXRWhhVGShb4=;
        b=nJE3onlRJOowWn2xvHbHiJQdUnGHQ/IEkJVqdwJY2n/epYISltfptAX1WrcootdUl2
         Ke+tAeRqQVKfrJmk+lN5q3tMrIbaSeEwN+7QIdzXL/8pc3Zx0GlNPmUxSOugY8CTl11v
         Z6KtPfrNn8fSVCSGWsN4F3kGHV7EebQR1RCaMS5M31WMQzmxbLl/s9MSolO07z/jJjEk
         YsQqg8ecu3gI43pXA5+pXCgWepGx6E/oOViBwj5T2x4WcRWL/yS1bz1arjP39LyD7lsA
         DWBwupJG7JJb//PpLlNXPpCGfedcjlW7/jJbIFPU7xK3UUhH7UKfkywRxHju2S+jU+1J
         3lhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1NRSmZq3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RaELzAGzZVYpdrkCIGlTy3caZRI3MYCpXRWhhVGShb4=;
        b=ceeq7Qk3ys9cNN8Hu5coOLRa0aoiGbocEiM91EeuthMiY3LtAJjvAju2WWryZKHw0R
         naFyETdUvAWyzOVpSVI4qCqUc5WFjkJ5eUvu9niwmMKSmq1jg/5l1FlXIF24HQfyfWjD
         qLb5dMYin34v3ekCGrVEQeIwqWqQSvmTcGFx0TUZBiGkiX16cQEkY51dxLD/q/0vLGkP
         Pk/WqkbS1C9qvZcF3XD/CcCkjIFhjTcT9e8eiS9eOGKRxOvL1M3m3AOA771/GDD2Xx0d
         O6RXHmTaaZxpB1bXjD1aZl4xwCEIQe2EmD1hxynZLmQ/IdHKJC+jqXbqEeTnroJKMNmK
         N32Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RaELzAGzZVYpdrkCIGlTy3caZRI3MYCpXRWhhVGShb4=;
        b=O2wFwsbBenu2IL5GTQgOYJFJ2hDReHSjTC3EKgp2N7/lh4CBdmEwNacsoSK5v1AukQ
         EcDy8sRdLmfYnbw1npRitfKYAe+TT2GV4ao9ISrarUA5+ujSHYuMGiR20zzEGUGJJ+hZ
         QXLF1MVlEh0YYsqdkYxWPZ7Tp5sq1gKbY+JK1f/f+hosK8lweNblJisZDOdsYaErjfgB
         5dXn3IBl0SKn1+nhafqBDqjqSPlG3niCupJuyuAQIttvi+V1csMRbaAp+YF0iv6Iqoqj
         DRXFjnLtsWsBmgTD//1UhpMXSUBpM4aOaPJmMINBP1t5kOlh2MNv71SHxev61P4mbozV
         36Cw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVkCRWCOVJ+5CVsZ/y2P8s/PUoFN0hitD1jWbr+RDQVWVBOCY+b
	zw/B6eZAxDdXalaa8Uq/KcY=
X-Google-Smtp-Source: APXvYqy8RW9S9nQXuAwmZfv7AIa0BQi+YymQK0PAgIChZAm15b7U9t0Am75u+BwVYRtSgHHXMXiTjQ==
X-Received: by 2002:a17:902:6bcc:: with SMTP id m12mr3744610plt.272.1576078159594;
        Wed, 11 Dec 2019 07:29:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:ac97:: with SMTP id h23ls597349plr.14.gmail; Wed, 11
 Dec 2019 07:29:19 -0800 (PST)
X-Received: by 2002:a17:902:8ec5:: with SMTP id x5mr3782366plo.208.1576078159089;
        Wed, 11 Dec 2019 07:29:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576078159; cv=none;
        d=google.com; s=arc-20160816;
        b=N7+nZlgXXo6/tM8eloaqy37unzi1y/h4FzzqNAX0w/XrCsjOBSQO3JaFcQyMx8cTSC
         eKkV9+6KtSHEaKcMPacKA9Ukyb1pqnz0BXER3Z3IQQ2MWD/5lSxlx2cnN6Erre9LBSEf
         vMJhaB3YtBnV9qdSw5DcGxzy3GMIhThxaTrKm9OTK0vqIAilMVJ29NNIaCFnCJfatPY/
         ZWBYVOyjtlWiMSlPercS7Ti5p5Q/YV3sFKFWSTgCh15BQBrd3VTPULWBJw6gv4Yjz5hr
         05K4CW0YOSGS9hGrTsCHXI3Nz0Hq+4cEJhXBIgoklnnopYNpTsDRdlQ/u1y2Nq5iJZnI
         sGqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=g08NwLpnBLcO5lwmBKaCYAUbyRA/gtEvap3MmGcebfc=;
        b=qXoNq6f5Z4WbuJjCLlodidAkZz5oHrlR2jD4YQ71D/B92h0QjRimFU1sb+jGNjdpF3
         Tsk/SV2mTR2UrDjEgM6rgb/IZPej7aN6UzrCbLfn8EBUEOCzG0Y3cVo0UxGu2RQE+oyT
         3O5ec+ZxdBNF3m8uees+pZcFLDARDd6R2YO7DnfeWalh2P1aIMy5y3N8tce94+rgRUVP
         vuv8TPkegrMveAQA0TCH6wjA7LtYVow8S2BC624QHpemE+SuO1ChPBXZWpt+6BvVNhuQ
         TUh2UkvIeH1YIOfoIGWFigpP4yv6VxfQXu9671nclsSNojk/GMotPWXv7gC+TtaaDhOy
         Xz1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1NRSmZq3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h18si100890pju.1.2019.12.11.07.29.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 07:29:18 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F917222C4;
	Wed, 11 Dec 2019 15:29:17 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 43/58] scsi: iscsi: Don't send data to unbound connection
Date: Wed, 11 Dec 2019 10:28:16 -0500
Message-Id: <20191211152831.23507-43-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211152831.23507-1-sashal@kernel.org>
References: <20191211152831.23507-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1NRSmZq3;       spf=pass
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
index 045207b5560eb..7e3a77d3c6f01 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -372,8 +372,16 @@ static int iscsi_sw_tcp_pdu_xmit(struct iscsi_task *task)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191211152831.23507-43-sashal%40kernel.org.
