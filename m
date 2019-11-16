Return-Path: <open-iscsi+bncBAABBNEHY3XAKGQEDZGHHHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C225FFAF2
	for <lists+open-iscsi@lfdr.de>; Sun, 17 Nov 2019 18:30:30 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id k11sf10838810qvw.19
        for <lists+open-iscsi@lfdr.de>; Sun, 17 Nov 2019 09:30:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574011829; cv=pass;
        d=google.com; s=arc-20160816;
        b=VOtwpO48pBjs8FwHL6L+emstJgkVIRhLdSMUNDpy6CF5yiCzWLfVfutnJi5j9AoqgQ
         iFLfkSNG7VlTuH2fgIghV0Vxb0xZj93KDiYfPsrbAbxQfrCa8DpXdVRH22+VMEp3YUHq
         dm2WDECxv5TtGwiGWaD5LFc3XFTSFLrym31sdPzk3BpRvQid2Tkg3xO6SEs0/SohA5/L
         ohpyrlOLR8db8YmoZfIHgLAxepYXfjt5cdDZ51Lds88KSBrInQzahQEIt65/0LHllw+F
         tyqw6LIjbmzH6gqjAnhhVwo4R6HYVmISXE5Fj5v23LfY1G0gFH/MwA6CUBW7LIN/rsG8
         aK4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=UYaeGE2mHd3JxfM5DTyBmMx4m2y0E7p+SUud2Ww2qq8=;
        b=vZ/6I/I/oJFwSDIIlUTJViThzYvJ5R0EPf23owHTkaGopWrJR7r/RtxP+DB15cDrWL
         XBIJnhMnKebxl8/oaNQ2Qorxm0gwGqjlw/z2SyBp3M3JhiojZJUrX4ZPkx4jxb61L0Wl
         15M4O/uj+B1mD0Cil6SETIqsSWWa5So1GsbTPUy+n6jMcn9whYrdRGSS5ccKAlex2Mb5
         k6bZIil86TEOqrEYAF5NtP++ghoUC/CfAFDspeZV4EVcEGQrrJ45zxSfZyeQ39o/flXL
         k/mu2tL/O8/UhjmMatD6mSLvfso44EhL5gC8JGARbdy3w67RUOR1HDP/GCk1XRTFClup
         wO4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UYaeGE2mHd3JxfM5DTyBmMx4m2y0E7p+SUud2Ww2qq8=;
        b=auInHkooNZRrhVy0mLdzzKlkv93a1VPjgC13f18ywmNRoAaUmeaVX9dnVqPsOCD2i0
         rUaIpWTAaEchXXGcsDqfXiBqUWfX1goS2lVj9Ob1MYiQRLQoxAakBmWdAv4msz22qjIc
         0temVGfmVLh78a1WUq7VArNnFqmpNaepyAVkzHcx82aiKSOzeCNN2jlmN4rKKhGmhX0j
         hLKLsZAuCOsuqjU/ujUAdrIvmKY+Q41JURptVUnBLeJcdeeqovaQgzlFkw0ujQ8L/eIG
         HeA9GJ1lzm8aGhSNBh1EFCFQj61e2qmn7EuK3itjkLgiRKGKyQup1g7OteyuiEjmK2s/
         V56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UYaeGE2mHd3JxfM5DTyBmMx4m2y0E7p+SUud2Ww2qq8=;
        b=ACQTWslqyUsX8JrHBqyhGaRyTKG+aOsL6T69F4+FvDCzq9MZCvz6rhQ+zu9xBibHXs
         iFqWbjnwbUJXdXxMFXkQnOJTOdLbnYhO/bilMtkIdTJOLulHti+wEq5VPAG9VoemOSD8
         RhcUFHP1khzwaYpHEmO7vhb2xX8CWQVSqjYhTUR3FPB4O0kDrmcr/qFTKFs4DNoAkbvt
         IGqFw5Ol4Fsvac9BXJK58PSEPdt/YvNq8Rwflty9YF5okAes7/n2kGHl53R2m4Bd9XMx
         bftc6Csags1Gj63ofqROTiFGNkFqhm1ryk0F5pfYs8k3ScCy75olXaBxeXCD1np6czeB
         +I1w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAU8erTu/jPmVqgjV7cmwzLotjwNWgvG7tT7dI+L8i5kjrPfhoup
	PjCrv5d5a6CQTKJZgXNwSpo=
X-Google-Smtp-Source: APXvYqwPbHRvlMmQnT52gRb0993Qr/f/TvPqQyj5fFWKWcCyT0G1+2nm1X8YSmc9fVu5xu+pzNTTWQ==
X-Received: by 2002:a0c:986d:: with SMTP id e42mr15702391qvd.25.1574011828839;
        Sun, 17 Nov 2019 09:30:28 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:37a4:: with SMTP id j33ls4101664qtb.14.gmail; Sun, 17
 Nov 2019 09:30:28 -0800 (PST)
X-Received: by 2002:aed:3baf:: with SMTP id r44mr23594900qte.255.1574011828716;
        Sun, 17 Nov 2019 09:30:28 -0800 (PST)
Received: by 2002:a37:8341:0:0:0:0:0 with SMTP id f62msqkd;
        Fri, 15 Nov 2019 16:47:53 -0800 (PST)
X-Received: by 2002:a1c:7701:: with SMTP id t1mr19310119wmi.113.1573865273206;
        Fri, 15 Nov 2019 16:47:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573865273; cv=none;
        d=google.com; s=arc-20160816;
        b=o+M2NyezU9IoT0Is1IPYYEdjPtvne/P30FMkxWuiQsazIX5EqcgPR4G1IN5fD7mk7E
         mLTYhHaci0PLUSu7NWsJLQM98ngmRWt12c28r8+KmQtsPss5mFXKCDhNEWTe+Oqv6QzM
         aWef/yWE1gLXa+s95PNAO19uRA4hCLiZbgW1vRuPOb/uskG/DuS4bHrPu2hq0veiZfCM
         c4X9H4dpKVTbfekna0foHRHgaKx3DxLM4xBIb56hVixWVGtOMdM6mGDbwUCpru9fIh88
         V9mAafg+0rfbGORHdM/cAJkVSpWQKpQLJfGQZiAiW/m5a7jL7Qwps+98b/K597hR9/K+
         SCCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=mHsjlwWf/fuoAEbo7R3br0R6OockRkSFQpYF6EJRfBk=;
        b=m16GdxOyqphITP7uk2s8MfTk8MBD6LQq0OiQPsoctZT+8aIGtppkcj5tqvmslahGxS
         rkwGcoT/B0F0TqXrXXeLYMQauVQc2cTVNci4amFd+X+vAaNa58QwKnB0pDT3iIWnihhK
         r/+IXcIDB5r6WeyuJ4THJo/Eofk9KUY0egvP0zoV8BaoyHtBxhnT0d3Fm2oeJsY3zSAx
         9wuVCyWns5lm55D82ZpeDREjCicSX0S1O8gXT2mPjkSC9Nbjml3ahmRN0mWPVTTlP/A/
         eWWQIW79vntiE8JAvbcJjOL6wau83IlAGgaTnMhEba0Qzh9l1Qp27NTQITmmKgCMIqvv
         fsrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id y188si743113wmc.0.2019.11.15.16.47.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 15 Nov 2019 16:47:53 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from localhost (unknown [IPv6:2610:98:8005::247])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: krisman)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 65BC227E609;
	Sat, 16 Nov 2019 00:47:52 +0000 (GMT)
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	Anatol Pomazau <anatol@google.com>,
	kernel@collabora.com,
	Frank Mayhar <fmayhar@google.com>,
	Bharath Ravi <rbharath@google.com>,
	Khazhimsel Kumykov <khazhy@google.com>,
	Gabriel Krisman Bertazi <krisman@collabora.com>
Subject: [PATCH] iscsi: Don't send data to unbinded connection
Date: Fri, 15 Nov 2019 19:47:35 -0500
Message-Id: <20191116004735.16860-1-krisman@collabora.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

From: Anatol Pomazau <anatol@google.com>

If a faulty initiator fails to bind the socket to the iSCSI connection
before emitting a command, for instance, a subsequent send_pdu, it will
crash the kernel due to a null pointer dereference in sock_sendmsg(), as
shown in the log below.  This make sure the bind succeeded before trying
to use the socket.

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

Co-developed-by: Frank Mayhar <fmayhar@google.com>
Signed-off-by: Frank Mayhar <fmayhar@google.com>
Co-developed-by: Bharath Ravi <rbharath@google.com>
Signed-off-by: Bharath Ravi <rbharath@google.com>
Co-developed-by: Khazhimsel Kumykov <khazhy@google.com>
Signed-off-by: Khazhimsel Kumykov <khazhy@google.com>
Signed-off-by: Anatol Pomazau <anatol@google.com>
Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/scsi/iscsi_tcp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index cea7fda1dd23..b5dd1caae5e9 100644
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
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20191116004735.16860-1-krisman%40collabora.com.
