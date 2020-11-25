Return-Path: <open-iscsi+bncBDTZTRGMXIFBBOXU7H6QKGQE75F2KGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id F40BC2C4308
	for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 16:37:32 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id r13sf1416706oti.19
        for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 07:37:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318652; cv=pass;
        d=google.com; s=arc-20160816;
        b=gncfU9oQvpnYFD8XljNizy55pvWnDiyBWB2+x75ZIA7LmMTB0Ew2sEMZIA2CVyeuUv
         68jlX9PcoVewOMksw4owsPgt25P6JRlKrTFNR8qruQJhhQdCXfz6cNAKgeXPLWhLL7AF
         YqguX6o+BRMjlJYwqENwxXY/mkxfRUyth1GaBpkX4oP31jA1yo62DQyPARaiZA5Jf6Ca
         +wBed1diV5GAWsFZlsHEt/rocuE4/CL5rBHmTSA3FU59sU/TFWb5GRZhmO7PKh4H31aH
         N9X4oTKJrlDOR/+IVVzd7ZaNzPtHSgwiBT7Xnuwf6FKekfRDYej61c+40xnVNyKmXgCH
         4vaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=5LELbhM5JbMxUCNAdvVGtq49Dw3Ohduc/jEaCFW5AnQ=;
        b=rhWSJOY4mOjUUhLOkrLNZftaCAsqKW/MBFRaQAnwAkU461AHstwEeegHRS+UeWT+Lx
         jeVYgfpKloXPAGSRlhNpn+g2ytztErkHO8W/UuhvKXO+7sSSwurjEuwGtoX6dQ1OHbiv
         6JbooD786VT+K1YUifvgqp/KibnbPPTprlPEoQiIECZEgGIJC3Vo/V7vNIjJ7JwXKAGw
         iCxGsO4yHdD0XA5TvnOpVDoejBU6nzPTZLo/EA3yypuEiPkMuclMjtzLOvquKwLVP1E8
         atn2oj0462sRylVqS0geAc5obxDOa0s6/7RTLl97TOZGVv0VU176r26jM/QovQu9XTzw
         FxaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vXSr5BFw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5LELbhM5JbMxUCNAdvVGtq49Dw3Ohduc/jEaCFW5AnQ=;
        b=ixkkZGiEmtIKjWqjkHjKgtqNwZ+W6TpIkdQaSFI72dUyjt9xfPiz/4Z5bWakA+b7h6
         K9vMBTdj2ybYCkOctvC5eBKvxCCoPn9xiif6ObNCg40OoaXnvTh2IrjlyZgXMil3iab2
         egSBrptJrBYwdXNFjeZPXiNEiAIDGGJ8FDjMK5vgu8uOJlWynIusnnDiEgeVDJVkMELj
         yU5l7JmsbHsZ+popRyU4eTgmD2CCjWlhHr3qcmB7Hw6IjZwzqSIZjo3U48DZOYGSpzEH
         EgqdVG2PGsTzWkbU4/iCvnhDzVQdDPThrvQ+/CZwRZ3eSNy3M6Kp8LbVzjRUbfie77Xh
         58ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LELbhM5JbMxUCNAdvVGtq49Dw3Ohduc/jEaCFW5AnQ=;
        b=Lj6E9/fn0UpPr7JSECrsrSa9GYmLqlUTJNA7DG9mhIXEDGWtIXPZUnnNfwnUdZNmZL
         aXmPeutqV8z9vNRdOP44yy3sIN5EvDvH2QV/Jed/e0slVABdR5dyZZi/XBMQKmg3Bfb3
         PHEIdx5+1F3UdFSZhKJtZSDInKcxP+Ya3lpmz8mHqMHdX7Bg0dofdyVtiIrCpGmawjih
         FVdgMESU59QtADsu8nPeUGotctB6PVgCFvC555T14dM27/6pkuctOuLpPiPptQxnU79q
         qcIs9wbK2mAK4bf8Mr+ZkkW0RSmDvHCpPdBI5ZEMcY7St1mhj/F6Nt2N4oKgmV/HE5j2
         tVLg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532C0rIKG9wXH95g5PTQWVwiu7CmRGtBiendo1pCZs2KY7XlkArH
	y/seHRfpXrMXmgbGONM7o0w=
X-Google-Smtp-Source: ABdhPJzk5g/6Y3HCsQkgjnEYAchOY2XC9e+Mj6huHdSmN2muEWruIPY1fsgjbWuFrTLq7ZssezTEQQ==
X-Received: by 2002:a9d:2ab:: with SMTP id 40mr3412976otl.280.1606318650498;
        Wed, 25 Nov 2020 07:37:30 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:230d:: with SMTP id e13ls665420oie.1.gmail; Wed, 25 Nov
 2020 07:37:30 -0800 (PST)
X-Received: by 2002:aca:ed0a:: with SMTP id l10mr2588047oih.56.1606318650119;
        Wed, 25 Nov 2020 07:37:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318650; cv=none;
        d=google.com; s=arc-20160816;
        b=inYc32Qpzm9/VdPtnuRHWjabj1f8tq/nQxS3jtShKjk4obyep+DsIGdZ+Uxp71CjS7
         hO1PfSXUtiJgQaRJXWkZl+dkybYI27eh4huEMly76RN++nhq13LO3ouSxRjJQHSDIw7D
         3F1h2nd4IFSp4avbhynG67Jrm66ZMDrbfRZemXu2vH0tdM/nk6rwHWNhVbPxYq/v/R0d
         FRy3h/ztMPRsUms910oh48KybgWZlk64rF6/IKhCHZKA2aqQMVVmn2yhfsqFkb96+TKw
         qpGa0hILXrVUpO+ugi5HfJ6WnTUzg22LJ3P5GLtYOGr7EKkQQZl2lYDDPe7QNSkzIYfb
         AErw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=n03mtX8VusUspR/Rd7wuvCNzIiAc1pe7KvCJU6homGM=;
        b=PC50/KcoobbXseLtkpJba85VpsncygmHrS+pwd8R9nCuhodT3c6qCtLFkTZrA45gV0
         SWlGg6FU06RPNWVAtpPCdKf1/J3gsYxfYZKPU0gxCvK6iACJcr+v9qh99si1A/66wJCN
         yZ/K6natqhgJd8682U2ZlalG+SVUgcmwC0sbXHN8fIWdVyd94OYplNL+T63BvLkXSqRA
         yBbQua6v06q5S+S3KuD6ks6AtDFMz9jV1bjOQ+eHqYhdtd1CxBa2O7qcf1mMBf34W7ro
         vcJPL+O2yhdcXoLgg1eoPp4ZVPI0SGMWl2BPkRtha82/sBSpy+sa9S/V8SHxZBvN7HE1
         hEnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vXSr5BFw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l23si118388oil.2.2020.11.25.07.37.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:37:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 25523221F7;
	Wed, 25 Nov 2020 15:37:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 12/15] scsi: libiscsi: Fix NOP race condition
Date: Wed, 25 Nov 2020 10:37:09 -0500
Message-Id: <20201125153712.810655-12-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153712.810655-1-sashal@kernel.org>
References: <20201125153712.810655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vXSr5BFw;       spf=pass
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

From: Lee Duncan <lduncan@suse.com>

[ Upstream commit fe0a8a95e7134d0b44cd407bc0085b9ba8d8fe31 ]

iSCSI NOPs are sometimes "lost", mistakenly sent to the user-land iscsid
daemon instead of handled in the kernel, as they should be, resulting in a
message from the daemon like:

  iscsid: Got nop in, but kernel supports nop handling.

This can occur because of the new forward- and back-locks, and the fact
that an iSCSI NOP response can occur before processing of the NOP send is
complete. This can result in "conn->ping_task" being NULL in
iscsi_nop_out_rsp(), when the pointer is actually in the process of being
set.

To work around this, we add a new state to the "ping_task" pointer. In
addition to NULL (not assigned) and a pointer (assigned), we add the state
"being set", which is signaled with an INVALID pointer (using "-1").

Link: https://lore.kernel.org/r/20201106193317.16993-1-leeman.duncan@gmail.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 23 +++++++++++++++--------
 include/scsi/libiscsi.h |  3 +++
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 7a05c72717666..1c69515e870cb 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -571,8 +571,8 @@ static void iscsi_complete_task(struct iscsi_task *task, int state)
 	if (conn->task == task)
 		conn->task = NULL;
 
-	if (conn->ping_task == task)
-		conn->ping_task = NULL;
+	if (READ_ONCE(conn->ping_task) == task)
+		WRITE_ONCE(conn->ping_task, NULL);
 
 	/* release get from queueing */
 	__iscsi_put_task(task);
@@ -781,6 +781,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 						   task->conn->session->age);
 	}
 
+	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
+		WRITE_ONCE(conn->ping_task, task);
+
 	if (!ihost->workq) {
 		if (iscsi_prep_mgmt_task(conn, task))
 			goto free_task;
@@ -988,8 +991,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
         struct iscsi_nopout hdr;
 	struct iscsi_task *task;
 
-	if (!rhdr && conn->ping_task)
-		return -EINVAL;
+	if (!rhdr) {
+		if (READ_ONCE(conn->ping_task))
+			return -EINVAL;
+		WRITE_ONCE(conn->ping_task, INVALID_SCSI_TASK);
+	}
 
 	memset(&hdr, 0, sizeof(struct iscsi_nopout));
 	hdr.opcode = ISCSI_OP_NOOP_OUT | ISCSI_OP_IMMEDIATE;
@@ -1004,11 +1010,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
 
 	task = __iscsi_conn_send_pdu(conn, (struct iscsi_hdr *)&hdr, NULL, 0);
 	if (!task) {
+		if (!rhdr)
+			WRITE_ONCE(conn->ping_task, NULL);
 		iscsi_conn_printk(KERN_ERR, conn, "Could not send nopout\n");
 		return -EIO;
 	} else if (!rhdr) {
 		/* only track our nops */
-		conn->ping_task = task;
 		conn->last_ping = jiffies;
 	}
 
@@ -1021,7 +1028,7 @@ static int iscsi_nop_out_rsp(struct iscsi_task *task,
 	struct iscsi_conn *conn = task->conn;
 	int rc = 0;
 
-	if (conn->ping_task != task) {
+	if (READ_ONCE(conn->ping_task) != task) {
 		/*
 		 * If this is not in response to one of our
 		 * nops then it must be from userspace.
@@ -1961,7 +1968,7 @@ static void iscsi_start_tx(struct iscsi_conn *conn)
  */
 static int iscsi_has_ping_timed_out(struct iscsi_conn *conn)
 {
-	if (conn->ping_task &&
+	if (READ_ONCE(conn->ping_task) &&
 	    time_before_eq(conn->last_recv + (conn->recv_timeout * HZ) +
 			   (conn->ping_timeout * HZ), jiffies))
 		return 1;
@@ -2096,7 +2103,7 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
 	 * Checking the transport already or nop from a cmd timeout still
 	 * running
 	 */
-	if (conn->ping_task) {
+	if (READ_ONCE(conn->ping_task)) {
 		task->have_checked_conn = true;
 		rc = BLK_EH_RESET_TIMER;
 		goto done;
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index c9bd935f4fd1c..1ee0f30ae190b 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -145,6 +145,9 @@ struct iscsi_task {
 	void			*dd_data;	/* driver/transport data */
 };
 
+/* invalid scsi_task pointer */
+#define	INVALID_SCSI_TASK	(struct iscsi_task *)-1l
+
 static inline int iscsi_task_has_unsol_data(struct iscsi_task *task)
 {
 	return task->unsol_r2t.data_length > task->unsol_r2t.sent;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201125153712.810655-12-sashal%40kernel.org.
