Return-Path: <open-iscsi+bncBDTZTRGMXIFBB27U7H6QKGQEVAUQVDA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 112962C4317
	for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 16:38:21 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 143sf1886582pfv.16
        for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 07:38:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318699; cv=pass;
        d=google.com; s=arc-20160816;
        b=1BKnnDuMrUdK4jpZCI5xEe/hz6W5jVTMXF/fsTM1gT8+CJ+Kwp4pcK5jrQhHebuETx
         26ArblCC2GCpVN5EeRNSrmsDH0wId7VztTOnFnOWnlFkrCuXBKtl3OZyPFeIOJR2+Crq
         VDe/+LOVLN07DuRfIDPzMJTbSyF4CBw+XcprehwONSH9xjkod25Pu1JzizWAnZiV+6dH
         R1c8cDVS9CnhmHAqkSx5GF69QMjok5rjslxUa54ckfQtYAcPrfItQd9I05ICiMFj05lR
         ZXIi+NYyDNEwxchv4L1aR+6GxKxMOg+7gbc9EUkTbmUck0Xaw0s6UiCCRnHl1naQ/I+U
         4Wqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=nPZLZpDPPaa6XPZHUOXOs+lc6Lf4qnHXIdoq8IBPve8=;
        b=lX+pjMqlsmmI1dkKiWOpoDVx21EIhHbV5sir6fsNIRzEyOhtUxEeJM5fBF/IdFVAhP
         2FM8oHAVt4qHQJ/FNC6OO9/ZeXBASvybUqQp8fiD+/vR8ffSTb0ZeAPQwEg3/AoqcX9c
         GeTyM73aApDFfJxYK5lo6GoBdKflIO4dY2qhSXHfFTyuf6/XiUi+9P+rbFFqjFVogphi
         3efwXGrsPsowMAbkxmwoDjV6BzJtOf0VODpPmZ5gUDcjTIYkK4Hi004CRHmDipEUWOnZ
         I4CWZxzDikrJT2w8MW51AfRMF1C2v3ph1yt/DJ3TxRrvziTpz2vBHrSpwvc/QhTQSqrm
         t18g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Loq49cOB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nPZLZpDPPaa6XPZHUOXOs+lc6Lf4qnHXIdoq8IBPve8=;
        b=NDPx5jDx/6REywgVovsF7eZ408OM4/pmgzmHJvdoLflq+86DgfmH9433HB33eYguTY
         zy6dCKF4pP4fYcJWmyXcK6zZd2zXo/t5E1CEUBTpFBEUUDG+XcCd0NLYdz40ziWWaaiy
         iQYECwQA1P3fowrnV2L4GZZKq97P+0jipLNTDXL5FjN+fgH8BDn0AFgnFfGvHnHcGGJT
         VOYZx6pPOd0TBr4bWX59IGzvOksaQTgRc9JNv2q3m/xZOeLRSSM0sXUL9sqmiGDaWjfM
         uWDXUEf+wLkF3BviCiNzKEuPoREcYvjv6Vsq3mBFkU0EGbs/7JUyL4kf5oTDcCmbhFYJ
         aXgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nPZLZpDPPaa6XPZHUOXOs+lc6Lf4qnHXIdoq8IBPve8=;
        b=c0XlNZfuSWGBrXYzRM7Af1nOEJbzHwH525NYBrdjP8BapAoxZBO75BcUi2jpvNNNZN
         o9szV2GwByB1RNeGl959KUhY9vm8EtGjAlPM4yAq5HIBmlBl3Z/lhcl74bF6d9j8NKHQ
         FY6jHxc9549LkDqst3Nuu6pYwk6aYnzCuJHFQrXh1ZlDeSG9b6MtNgxCRvc9MSAQt1Wl
         oy+clXWT49GwU+Z0G5kMyTSxrTL3jZmWMQ5SbgDWPgud12kUqE+YOi8LRQusKM2OWez0
         qzHvHRcolcH8B/22bquDSI2c7WXMZwZjSHFT15vugnc3RaAM4UuDQazgQYtslfBm53tM
         ei4g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5306dW7KoSz1GrZhMbRs5UAylWBSAC69R0ZWeqG2n7quQjdy73q/
	S7fpZiTqFI53T8VGGYrwNlw=
X-Google-Smtp-Source: ABdhPJx+BdBo+xTm69jMqC73ijIrdC1kEc8hID3L0vUJc1H5aaUeXDcFx1hxuzFaXQvwEZt6HFxR/w==
X-Received: by 2002:a17:90a:a501:: with SMTP id a1mr5060006pjq.4.1606318699862;
        Wed, 25 Nov 2020 07:38:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:8495:: with SMTP id k143ls1062006pfd.11.gmail; Wed, 25
 Nov 2020 07:38:19 -0800 (PST)
X-Received: by 2002:a63:5d59:: with SMTP id o25mr396618pgm.218.1606318699223;
        Wed, 25 Nov 2020 07:38:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318699; cv=none;
        d=google.com; s=arc-20160816;
        b=iWdDsvkEbo6uCEtZh87UMEUTd7Y/jVYLZ8wF4wTSnvCh0myuX1Wxub2wB+vtEqyNaj
         zC8a7iPP9DB+xHtEgUh6hrA/gOofQ5jRweesaEVEup+HcRdQtS7JFf93b0XLs61NS7Fs
         fOkTp5TDvxo/HMB8Uqs1wGshgb90xPj7aSLPJ2Bwjs6h2SOVeJrRZta1noekK6vf0wte
         3yVVgwPotsPkeZdvZjao4++1cGfQRnh40WXHNZAoAw+a/+mCGv1zpBK3lMHXWMCTnDDb
         KnPSH10j5FHqZXExc5LzTC58SNg3ODjI++/w8VB5b7DQBZngwGPC245AayGqksCi7DKj
         NYzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HPNgADEK6kW/CNAOFhfi/oeuEFuIzvFn6j910TYNQF4=;
        b=ApHl0pZloauz3ffz1jqah8Xo8vnyCJDvuGtyVW+QWAycFlMaa8/GRp2XlxO03E/Ani
         HNmJl6Z0y84nN+JxpGOGguzxOetWAASoUK/gU/ADbhoJtEz/dSLKFFcKB+OOVO1OKkoz
         I796AYCCnRk9GSN/HnvThIwYlJ0Jb6mBmS5cWcBT7FP6VO5c15ZAOCOJRap0LjHf70iK
         5DwSAXTlYSUERWSf8pfX9Z9xVa9P49/OqLKBRyQrkxMhQST2rIQOvZTXslPJsAgtDlMY
         3i1n6WLuBhVivTzuURnv7DxLzXHCSXyYa7rRE7KLccDIAy6+m24LvTCz+5unHvA62gIz
         bAgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Loq49cOB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mg17si269124pjb.2.2020.11.25.07.38.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:38:19 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B5AB821D91;
	Wed, 25 Nov 2020 15:38:17 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 7/8] scsi: libiscsi: Fix NOP race condition
Date: Wed, 25 Nov 2020 10:38:07 -0500
Message-Id: <20201125153808.811104-7-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153808.811104-1-sashal@kernel.org>
References: <20201125153808.811104-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Loq49cOB;       spf=pass
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
index b4fbcf4cade8f..36e415487fe53 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -570,8 +570,8 @@ static void iscsi_complete_task(struct iscsi_task *task, int state)
 	if (conn->task == task)
 		conn->task = NULL;
 
-	if (conn->ping_task == task)
-		conn->ping_task = NULL;
+	if (READ_ONCE(conn->ping_task) == task)
+		WRITE_ONCE(conn->ping_task, NULL);
 
 	/* release get from queueing */
 	__iscsi_put_task(task);
@@ -780,6 +780,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 						   task->conn->session->age);
 	}
 
+	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
+		WRITE_ONCE(conn->ping_task, task);
+
 	if (!ihost->workq) {
 		if (iscsi_prep_mgmt_task(conn, task))
 			goto free_task;
@@ -987,8 +990,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
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
@@ -1003,11 +1009,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
 
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
 
@@ -1020,7 +1027,7 @@ static int iscsi_nop_out_rsp(struct iscsi_task *task,
 	struct iscsi_conn *conn = task->conn;
 	int rc = 0;
 
-	if (conn->ping_task != task) {
+	if (READ_ONCE(conn->ping_task) != task) {
 		/*
 		 * If this is not in response to one of our
 		 * nops then it must be from userspace.
@@ -1960,7 +1967,7 @@ static void iscsi_start_tx(struct iscsi_conn *conn)
  */
 static int iscsi_has_ping_timed_out(struct iscsi_conn *conn)
 {
-	if (conn->ping_task &&
+	if (READ_ONCE(conn->ping_task) &&
 	    time_before_eq(conn->last_recv + (conn->recv_timeout * HZ) +
 			   (conn->ping_timeout * HZ), jiffies))
 		return 1;
@@ -2095,7 +2102,7 @@ static enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
 	 * Checking the transport already or nop from a cmd timeout still
 	 * running
 	 */
-	if (conn->ping_task) {
+	if (READ_ONCE(conn->ping_task)) {
 		task->have_checked_conn = true;
 		rc = BLK_EH_RESET_TIMER;
 		goto done;
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index c7b1dc713cdd7..9c7f4aad6db66 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -144,6 +144,9 @@ struct iscsi_task {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201125153808.811104-7-sashal%40kernel.org.
