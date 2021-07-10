Return-Path: <open-iscsi+bncBDTZTRGMXIFBBDEHUSDQMGQEYW5AD2A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB073C2CD1
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:18:53 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id eo5-20020ad459450000b02902d60d0f0744sf4810084qvb.2
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:18:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625883532; cv=pass;
        d=google.com; s=arc-20160816;
        b=eobMJCmPvxbKHqMzMcsverzG3C/9tSLZNx+uVkHksZbwfaQCF/Lw1Er1RI6sfx8b7f
         s31y/NyJ223gDbrm4bKDkrRRz8rV6PvOZLNQWBX6bxkoILyf+SDlEncX08KffiYykJzx
         j1PRgI6TCACZ5b8nOsDRzWuSrI9tZhVIkRbXZwAQoqwbkHRdalwlktlQakmUPU/ns6Cg
         fObgxb78gR1DB18urHQSKyn4zEAKr7IkGvdGAkVaboGsooQpcn53SUSTdUzkaJz90oja
         skw5CPu6mEmCgZG23iIIjFM4e+kDlpFSenibY1Uav+prJX/Or6FMtNpJF8nFS8uoPKJ2
         xuaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Q98WHljLn3vRlaovLK8ebkHN5B7p9s4a30iQTAq1KU8=;
        b=RaFdQTF6IZ+LJGrfELYKOzsh6aQcJmPotg8OG20GXqhw+c9PLtVx5p/bKdPPwhRZh/
         NYufzvIUXpbV8t7lnjmaaWYQEcU2hmwIAFtSfihfA5CnUksbsb/CSFfZzq761OBE8X5e
         F+VS8mJUS/PCDXKe5wAA4Wka7WJkLhddntT//7x3DB7lK0bhLvrEFZ3c9fLg4r64Oe97
         AZ+Ez2yTtW8OkGC5PmJHqKzKpvWMEok/rii+wcYftzYXrmqSNWSqmB1ZCNwbkksXpS1M
         XjOlMt6Kp8XIFmkQToAOtCu6TL0L9WcCpGhGQ971aP/XKYpc0Xsbr8vDUdRc/P4Z8wy/
         BClw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qch6bM4g;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q98WHljLn3vRlaovLK8ebkHN5B7p9s4a30iQTAq1KU8=;
        b=J3YoCS8WZOKR408gG95a8SSPTNkzlZFNF0a8fbhqMw0ZL6xKxUh63HFC2lJKVci+MP
         EPk6Ph8pc/YIIDI3ha10PZ8ObESMTS6fBuoh0iU/pkHV1rVe7Vx7EHGlvG5+HxgbVL61
         j6wBoSbnbEZnpCD/iGoj7MEzcq2dJXWji9u2g87b7e3tijGwOR+DQVO0g5xjkYD+53Ug
         BimeS4j0zPo7dlC+65n0F9k2bLNwdK213N2vEvSS9ii0DUYzU0f1ZgWemPpIZTo645D4
         RPE+u0kYsgHLxYD0Y/5ksU4V04nBK8T7HCaA0LsZOoxEV9f63bZmtTfK/hrcSakk+mHt
         I+tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q98WHljLn3vRlaovLK8ebkHN5B7p9s4a30iQTAq1KU8=;
        b=nIlKJ6VYs64cs8bYSdDbvcARJIDDZS6whFYLcObBd6m3jLawVe6IIo5XXhYxpg/GLa
         FtzXLIJMtiAIk6dOeV44ssXO8HUi6R+pDRSLEYfcYGRIPV+i4A+iZCPKSvMOy0ewywtE
         8Nbxq3ZiulwpgX4ubNJ85MqSMZl5LtCbvIihtvD5h9VrlzZSwBekMaryIQZL9TIah3yC
         u9SYduOQL/tSOeYODf4RG3l4BXSQGDAzhnnyqyMtCGwaeD0Eul94Okji3Bp6aTfITm/y
         oW/+2X8qhjJcTbblN+dhHPM1m6UTc4/iN1Jgw7vP2PdgYaWOXVWnK1/9mFwTO+8JGmqA
         h9KA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5329oWSh2wREGb1FFHC9N3JfLXMKI4EiZbeF1HtRi9pWC22q166V
	jWxtHJEHseATCJTFivbH2g0=
X-Google-Smtp-Source: ABdhPJzMmt65ww4vXjbyhzgqMQJdWBmESF1pL5bIQhdBq8FhKP7eFHR2bXmSWlhJqurfY/DDoHKVMQ==
X-Received: by 2002:a05:620a:450f:: with SMTP id t15mr38000760qkp.411.1625883532445;
        Fri, 09 Jul 2021 19:18:52 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:38d:: with SMTP id j13ls3275709qtx.5.gmail; Fri, 09
 Jul 2021 19:18:52 -0700 (PDT)
X-Received: by 2002:ac8:4794:: with SMTP id k20mr11875534qtq.371.1625883532028;
        Fri, 09 Jul 2021 19:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625883532; cv=none;
        d=google.com; s=arc-20160816;
        b=oS7IXFgHaDH7RbSIVC5plVfIGRBJP6Tsqkh5jS8XrUqs3hVteeKBd3+RIvqSatqmbH
         zGiJGxdMvek/5JnonPyPe88zHqnLQSVRvqUQVWTkzTc5nr8vQ6C1417NtriP5wUzaC+M
         oGqoH/JYRIAQYSV6if93uRe9R7C8cfWbwFGNB6DPiSdR03zODDLj5fBErLBH3ztbDKC0
         IGAacp2yN/NB5XjQRyuRNHMXbT9QP5HakPGBdVQN556xCKJ0QiMNFoLLwClPbCArnJJ+
         CuYJiqLtgsduAhoUjXibaGZcJFtgCCWOlz4W5yYUvof39/BEi+SG0J2M0CKSpqIAUqLe
         +8uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IGy8a5ZxlFKNI96giO6yJiI0+PfCIDQHOlEgoHILzdY=;
        b=Du0IPnUDrxDRs9UkdXopdzO/1uedGxZ69ptBoVA0Uq+us2bT97+IRVjoJUGoCf5Bnt
         3rLPXpvW3/i2BosyYOorXKrhEdJpSf5MDt1crM3CSlebNF5MKIxK4vQ3mOmCCD42alRW
         ODRojvr9fH85xG4YZd1+7dnmlJzp1c9DqrYkB39GBBrdTFlIsjXL4eHTY9MWSJqlKMhk
         eQjJwkb0tdyNzrqDz2KEpKWnlWrIfF2w3MvfaPvKyjF3gGA/C6klPTCl0hlOHxW04OYZ
         puu7iCwQ7NmANyvrIeJ8oowgYV/Wk2Inr1ycfa1iquLYL5WtZpHnQnK8YOlLjLAR4Kse
         dS2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qch6bM4g;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n17si698055qkn.5.2021.07.09.19.18.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5648F613C3;
	Sat, 10 Jul 2021 02:18:50 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.13 045/114] scsi: iscsi: Fix conn use after free during resets
Date: Fri,  9 Jul 2021 22:16:39 -0400
Message-Id: <20210710021748.3167666-45-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710021748.3167666-1-sashal@kernel.org>
References: <20210710021748.3167666-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qch6bM4g;       spf=pass
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

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit ec29d0ac29be366450a7faffbcf8cba3a6a3b506 ]

If we haven't done a unbind target call we can race where
iscsi_conn_teardown wakes up the EH thread and then frees the conn while
those threads are still accessing the conn ehwait.

We can only do one TMF per session so this just moves the TMF fields from
the conn to the session. We can then rely on the
iscsi_session_teardown->iscsi_remove_session->__iscsi_unbind_session call
to remove the target and it's devices, and know after that point there is
no device or scsi-ml callout trying to access the session.

Link: https://lore.kernel.org/r/20210525181821.7617-14-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 115 +++++++++++++++++++---------------------
 include/scsi/libiscsi.h |  11 ++--
 2 files changed, 60 insertions(+), 66 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index ab39d7f65bbb..dfe906307e55 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -230,11 +230,11 @@ static int iscsi_prep_ecdb_ahs(struct iscsi_task *task)
  */
 static int iscsi_check_tmf_restrictions(struct iscsi_task *task, int opcode)
 {
-	struct iscsi_conn *conn = task->conn;
-	struct iscsi_tm *tmf = &conn->tmhdr;
+	struct iscsi_session *session = task->conn->session;
+	struct iscsi_tm *tmf = &session->tmhdr;
 	u64 hdr_lun;
 
-	if (conn->tmf_state == TMF_INITIAL)
+	if (session->tmf_state == TMF_INITIAL)
 		return 0;
 
 	if ((tmf->opcode & ISCSI_OPCODE_MASK) != ISCSI_OP_SCSI_TMFUNC)
@@ -254,24 +254,19 @@ static int iscsi_check_tmf_restrictions(struct iscsi_task *task, int opcode)
 		 * Fail all SCSI cmd PDUs
 		 */
 		if (opcode != ISCSI_OP_SCSI_DATA_OUT) {
-			iscsi_conn_printk(KERN_INFO, conn,
-					  "task [op %x itt "
-					  "0x%x/0x%x] "
-					  "rejected.\n",
-					  opcode, task->itt,
-					  task->hdr_itt);
+			iscsi_session_printk(KERN_INFO, session,
+					     "task [op %x itt 0x%x/0x%x] rejected.\n",
+					     opcode, task->itt, task->hdr_itt);
 			return -EACCES;
 		}
 		/*
 		 * And also all data-out PDUs in response to R2T
 		 * if fast_abort is set.
 		 */
-		if (conn->session->fast_abort) {
-			iscsi_conn_printk(KERN_INFO, conn,
-					  "task [op %x itt "
-					  "0x%x/0x%x] fast abort.\n",
-					  opcode, task->itt,
-					  task->hdr_itt);
+		if (session->fast_abort) {
+			iscsi_session_printk(KERN_INFO, session,
+					     "task [op %x itt 0x%x/0x%x] fast abort.\n",
+					     opcode, task->itt, task->hdr_itt);
 			return -EACCES;
 		}
 		break;
@@ -284,7 +279,7 @@ static int iscsi_check_tmf_restrictions(struct iscsi_task *task, int opcode)
 		 */
 		if (opcode == ISCSI_OP_SCSI_DATA_OUT &&
 		    task->hdr_itt == tmf->rtt) {
-			ISCSI_DBG_SESSION(conn->session,
+			ISCSI_DBG_SESSION(session,
 					  "Preventing task %x/%x from sending "
 					  "data-out due to abort task in "
 					  "progress\n", task->itt,
@@ -936,20 +931,21 @@ iscsi_data_in_rsp(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 static void iscsi_tmf_rsp(struct iscsi_conn *conn, struct iscsi_hdr *hdr)
 {
 	struct iscsi_tm_rsp *tmf = (struct iscsi_tm_rsp *)hdr;
+	struct iscsi_session *session = conn->session;
 
 	conn->exp_statsn = be32_to_cpu(hdr->statsn) + 1;
 	conn->tmfrsp_pdus_cnt++;
 
-	if (conn->tmf_state != TMF_QUEUED)
+	if (session->tmf_state != TMF_QUEUED)
 		return;
 
 	if (tmf->response == ISCSI_TMF_RSP_COMPLETE)
-		conn->tmf_state = TMF_SUCCESS;
+		session->tmf_state = TMF_SUCCESS;
 	else if (tmf->response == ISCSI_TMF_RSP_NO_TASK)
-		conn->tmf_state = TMF_NOT_FOUND;
+		session->tmf_state = TMF_NOT_FOUND;
 	else
-		conn->tmf_state = TMF_FAILED;
-	wake_up(&conn->ehwait);
+		session->tmf_state = TMF_FAILED;
+	wake_up(&session->ehwait);
 }
 
 static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
@@ -1826,15 +1822,14 @@ EXPORT_SYMBOL_GPL(iscsi_target_alloc);
 
 static void iscsi_tmf_timedout(struct timer_list *t)
 {
-	struct iscsi_conn *conn = from_timer(conn, t, tmf_timer);
-	struct iscsi_session *session = conn->session;
+	struct iscsi_session *session = from_timer(session, t, tmf_timer);
 
 	spin_lock(&session->frwd_lock);
-	if (conn->tmf_state == TMF_QUEUED) {
-		conn->tmf_state = TMF_TIMEDOUT;
+	if (session->tmf_state == TMF_QUEUED) {
+		session->tmf_state = TMF_TIMEDOUT;
 		ISCSI_DBG_EH(session, "tmf timedout\n");
 		/* unblock eh_abort() */
-		wake_up(&conn->ehwait);
+		wake_up(&session->ehwait);
 	}
 	spin_unlock(&session->frwd_lock);
 }
@@ -1857,8 +1852,8 @@ static int iscsi_exec_task_mgmt_fn(struct iscsi_conn *conn,
 		return -EPERM;
 	}
 	conn->tmfcmd_pdus_cnt++;
-	conn->tmf_timer.expires = timeout * HZ + jiffies;
-	add_timer(&conn->tmf_timer);
+	session->tmf_timer.expires = timeout * HZ + jiffies;
+	add_timer(&session->tmf_timer);
 	ISCSI_DBG_EH(session, "tmf set timeout\n");
 
 	spin_unlock_bh(&session->frwd_lock);
@@ -1872,12 +1867,12 @@ static int iscsi_exec_task_mgmt_fn(struct iscsi_conn *conn,
 	 * 3) session is terminated or restarted or userspace has
 	 * given up on recovery
 	 */
-	wait_event_interruptible(conn->ehwait, age != session->age ||
+	wait_event_interruptible(session->ehwait, age != session->age ||
 				 session->state != ISCSI_STATE_LOGGED_IN ||
-				 conn->tmf_state != TMF_QUEUED);
+				 session->tmf_state != TMF_QUEUED);
 	if (signal_pending(current))
 		flush_signals(current);
-	del_timer_sync(&conn->tmf_timer);
+	del_timer_sync(&session->tmf_timer);
 
 	mutex_lock(&session->eh_mutex);
 	spin_lock_bh(&session->frwd_lock);
@@ -2309,17 +2304,17 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 	}
 
 	/* only have one tmf outstanding at a time */
-	if (conn->tmf_state != TMF_INITIAL)
+	if (session->tmf_state != TMF_INITIAL)
 		goto failed;
-	conn->tmf_state = TMF_QUEUED;
+	session->tmf_state = TMF_QUEUED;
 
-	hdr = &conn->tmhdr;
+	hdr = &session->tmhdr;
 	iscsi_prep_abort_task_pdu(task, hdr);
 
 	if (iscsi_exec_task_mgmt_fn(conn, hdr, age, session->abort_timeout))
 		goto failed;
 
-	switch (conn->tmf_state) {
+	switch (session->tmf_state) {
 	case TMF_SUCCESS:
 		spin_unlock_bh(&session->frwd_lock);
 		/*
@@ -2334,7 +2329,7 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 		 */
 		spin_lock_bh(&session->frwd_lock);
 		fail_scsi_task(task, DID_ABORT);
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		memset(hdr, 0, sizeof(*hdr));
 		spin_unlock_bh(&session->frwd_lock);
 		iscsi_start_tx(conn);
@@ -2345,7 +2340,7 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 		goto failed_unlocked;
 	case TMF_NOT_FOUND:
 		if (!sc->SCp.ptr) {
-			conn->tmf_state = TMF_INITIAL;
+			session->tmf_state = TMF_INITIAL;
 			memset(hdr, 0, sizeof(*hdr));
 			/* task completed before tmf abort response */
 			ISCSI_DBG_EH(session, "sc completed while abort	in "
@@ -2354,7 +2349,7 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 		}
 		fallthrough;
 	default:
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		goto failed;
 	}
 
@@ -2413,11 +2408,11 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 	conn = session->leadconn;
 
 	/* only have one tmf outstanding at a time */
-	if (conn->tmf_state != TMF_INITIAL)
+	if (session->tmf_state != TMF_INITIAL)
 		goto unlock;
-	conn->tmf_state = TMF_QUEUED;
+	session->tmf_state = TMF_QUEUED;
 
-	hdr = &conn->tmhdr;
+	hdr = &session->tmhdr;
 	iscsi_prep_lun_reset_pdu(sc, hdr);
 
 	if (iscsi_exec_task_mgmt_fn(conn, hdr, session->age,
@@ -2426,7 +2421,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 		goto unlock;
 	}
 
-	switch (conn->tmf_state) {
+	switch (session->tmf_state) {
 	case TMF_SUCCESS:
 		break;
 	case TMF_TIMEDOUT:
@@ -2434,7 +2429,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 		iscsi_conn_failure(conn, ISCSI_ERR_SCSI_EH_SESSION_RST);
 		goto done;
 	default:
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		goto unlock;
 	}
 
@@ -2446,7 +2441,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 	spin_lock_bh(&session->frwd_lock);
 	memset(hdr, 0, sizeof(*hdr));
 	fail_scsi_tasks(conn, sc->device->lun, DID_ERROR);
-	conn->tmf_state = TMF_INITIAL;
+	session->tmf_state = TMF_INITIAL;
 	spin_unlock_bh(&session->frwd_lock);
 
 	iscsi_start_tx(conn);
@@ -2469,8 +2464,7 @@ void iscsi_session_recovery_timedout(struct iscsi_cls_session *cls_session)
 	spin_lock_bh(&session->frwd_lock);
 	if (session->state != ISCSI_STATE_LOGGED_IN) {
 		session->state = ISCSI_STATE_RECOVERY_FAILED;
-		if (session->leadconn)
-			wake_up(&session->leadconn->ehwait);
+		wake_up(&session->ehwait);
 	}
 	spin_unlock_bh(&session->frwd_lock);
 }
@@ -2515,7 +2509,7 @@ int iscsi_eh_session_reset(struct scsi_cmnd *sc)
 	iscsi_conn_failure(conn, ISCSI_ERR_SCSI_EH_SESSION_RST);
 
 	ISCSI_DBG_EH(session, "wait for relogin\n");
-	wait_event_interruptible(conn->ehwait,
+	wait_event_interruptible(session->ehwait,
 				 session->state == ISCSI_STATE_TERMINATE ||
 				 session->state == ISCSI_STATE_LOGGED_IN ||
 				 session->state == ISCSI_STATE_RECOVERY_FAILED);
@@ -2576,11 +2570,11 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 	conn = session->leadconn;
 
 	/* only have one tmf outstanding at a time */
-	if (conn->tmf_state != TMF_INITIAL)
+	if (session->tmf_state != TMF_INITIAL)
 		goto unlock;
-	conn->tmf_state = TMF_QUEUED;
+	session->tmf_state = TMF_QUEUED;
 
-	hdr = &conn->tmhdr;
+	hdr = &session->tmhdr;
 	iscsi_prep_tgt_reset_pdu(sc, hdr);
 
 	if (iscsi_exec_task_mgmt_fn(conn, hdr, session->age,
@@ -2589,7 +2583,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 		goto unlock;
 	}
 
-	switch (conn->tmf_state) {
+	switch (session->tmf_state) {
 	case TMF_SUCCESS:
 		break;
 	case TMF_TIMEDOUT:
@@ -2597,7 +2591,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 		iscsi_conn_failure(conn, ISCSI_ERR_SCSI_EH_SESSION_RST);
 		goto done;
 	default:
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		goto unlock;
 	}
 
@@ -2609,7 +2603,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 	spin_lock_bh(&session->frwd_lock);
 	memset(hdr, 0, sizeof(*hdr));
 	fail_scsi_tasks(conn, -1, DID_ERROR);
-	conn->tmf_state = TMF_INITIAL;
+	session->tmf_state = TMF_INITIAL;
 	spin_unlock_bh(&session->frwd_lock);
 
 	iscsi_start_tx(conn);
@@ -2939,7 +2933,10 @@ iscsi_session_setup(struct iscsi_transport *iscsit, struct Scsi_Host *shost,
 	session->tt = iscsit;
 	session->dd_data = cls_session->dd_data + sizeof(*session);
 
+	session->tmf_state = TMF_INITIAL;
+	timer_setup(&session->tmf_timer, iscsi_tmf_timedout, 0);
 	mutex_init(&session->eh_mutex);
+
 	spin_lock_init(&session->frwd_lock);
 	spin_lock_init(&session->back_lock);
 
@@ -3043,7 +3040,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 	conn->c_stage = ISCSI_CONN_INITIAL_STAGE;
 	conn->id = conn_idx;
 	conn->exp_statsn = 0;
-	conn->tmf_state = TMF_INITIAL;
 
 	timer_setup(&conn->transport_timer, iscsi_check_transport_timeouts, 0);
 
@@ -3068,8 +3064,7 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 		goto login_task_data_alloc_fail;
 	conn->login_task->data = conn->data = data;
 
-	timer_setup(&conn->tmf_timer, iscsi_tmf_timedout, 0);
-	init_waitqueue_head(&conn->ehwait);
+	init_waitqueue_head(&session->ehwait);
 
 	return cls_conn;
 
@@ -3104,7 +3099,7 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 		 * leading connection? then give up on recovery.
 		 */
 		session->state = ISCSI_STATE_TERMINATE;
-		wake_up(&conn->ehwait);
+		wake_up(&session->ehwait);
 	}
 	spin_unlock_bh(&session->frwd_lock);
 
@@ -3179,7 +3174,7 @@ int iscsi_conn_start(struct iscsi_cls_conn *cls_conn)
 		 * commands after successful recovery
 		 */
 		conn->stop_stage = 0;
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		session->age++;
 		if (session->age == 16)
 			session->age = 0;
@@ -3193,7 +3188,7 @@ int iscsi_conn_start(struct iscsi_cls_conn *cls_conn)
 	spin_unlock_bh(&session->frwd_lock);
 
 	iscsi_unblock_session(session->cls_session);
-	wake_up(&conn->ehwait);
+	wake_up(&session->ehwait);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_start);
@@ -3287,7 +3282,7 @@ void iscsi_conn_stop(struct iscsi_cls_conn *cls_conn, int flag)
 	spin_lock_bh(&session->frwd_lock);
 	fail_scsi_tasks(conn, -1, DID_TRANSPORT_DISRUPTED);
 	fail_mgmt_tasks(session, conn);
-	memset(&conn->tmhdr, 0, sizeof(conn->tmhdr));
+	memset(&session->tmhdr, 0, sizeof(session->tmhdr));
 	spin_unlock_bh(&session->frwd_lock);
 	mutex_unlock(&session->eh_mutex);
 }
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index 091f284bd6e9..2bb452a8f134 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -195,12 +195,6 @@ struct iscsi_conn {
 	unsigned long		suspend_tx;	/* suspend Tx */
 	unsigned long		suspend_rx;	/* suspend Rx */
 
-	/* abort */
-	wait_queue_head_t	ehwait;		/* used in eh_abort() */
-	struct iscsi_tm		tmhdr;
-	struct timer_list	tmf_timer;
-	int			tmf_state;	/* see TMF_INITIAL, etc.*/
-
 	/* negotiated params */
 	unsigned		max_recv_dlength; /* initiator_max_recv_dsl*/
 	unsigned		max_xmit_dlength; /* target_max_recv_dsl */
@@ -270,6 +264,11 @@ struct iscsi_session {
 	 * and recv lock.
 	 */
 	struct mutex		eh_mutex;
+	/* abort */
+	wait_queue_head_t	ehwait;		/* used in eh_abort() */
+	struct iscsi_tm		tmhdr;
+	struct timer_list	tmf_timer;
+	int			tmf_state;	/* see TMF_INITIAL, etc.*/
 
 	/* iSCSI session-wide sequencing */
 	uint32_t		cmdsn;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710021748.3167666-45-sashal%40kernel.org.
