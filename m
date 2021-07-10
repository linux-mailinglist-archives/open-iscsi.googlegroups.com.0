Return-Path: <open-iscsi+bncBDTZTRGMXIFBBEEKUSDQMGQENHOQLLQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id C796D3C2DC8
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:25:21 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id y20-20020a0cf1540000b02902cec22a4656sf7799233qvl.19
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:25:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625883921; cv=pass;
        d=google.com; s=arc-20160816;
        b=rIwrGZ1ArDHwwVT5IKl+CkUlP3bSb+kON6KQmOOStG/Q6SCJimgHiL/bkiQycTV2O5
         INnln6IK22FyBmTJ5KrNDBUbjG40Uy7X1FpceWC6HQ7GFbWwuZlC9ERLCrmE6xtf9bHr
         0xT3eW3CRbOnRifCkLWqexzC/e+j4QdBj6VltdmkizVPP1aiW3UjwHtXb4xI1mi4jA3Q
         sjQia9l9vxpP62wdlp0bqk3FZo9FzqohQDO8kH6cQtbUJ6hVc6JlX+wYK3UpzgVam9vT
         BI3BSPjubGwOBLkQ2+ZUWpld32Hat1vjeqmbRUickDl+VRpdubplxAmqMcLx6IHCjtht
         M3YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=0un0j75i9ABCXuAd+CRasd5KddUVVBhip74PweIo5Xw=;
        b=fT/DUrOoqzyJCYF0rfTprs+WgCVW5lwINEEikvXpMGjoIlNuDhGm4nWqSECGuLGPvS
         UaUwHon9unQ5QklEmF1xgCnJaZrHqLnXUXNXrAl3Z9NsDHa4XLsdyoQnU6iBZuEhHa1/
         7Ck82TD7sFpY0l3hrfhumaw+JllM47jmTq/DI+bqET/zpDB8XuguLI41WHrNZOhtGMuT
         +WHuD5Be+Nxrzg/vSpzmykMo8MHfydgRxGglER3uiJGTRK5kiLbLht963rtDNOtFu0sh
         8FeNR+IwAffE0J3Oj0MdqEbtzLP4tcnH+nkHK7G+usxZrQvzdFHnED/nh3skCtUXEE1X
         ggFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ovNSWASC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0un0j75i9ABCXuAd+CRasd5KddUVVBhip74PweIo5Xw=;
        b=HyKamJFeikR7J9ZpPSY+QVC91ym2jmZ25755OhVjzohj6LZa5rLZjhcB78U8ppYg4m
         f+Q4d8ESBKWLT/9i5tuG4tqD1YUsVI3sMpzJpDITBpnl5tlKmJFUbi2/lezfKHwz8BQa
         LCbhYMloJXiQPj4lVoRzrgEWpwzAF2QvyXzPSurQfdddqys2HZswBXu5TdNxvYiWZPIJ
         mtLr/KB0gyhZF22MOfFlXyJ3EoQNGcXhkWbLQswbrNG2ldurtWYJVdnUCQR5TGzgMsEh
         jOJk9G90j76LHO8EcVi51J/oMBT8t0BojrcZQx3NECRqpKhSvqizIKgM/z8r6NotZPbK
         3rAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0un0j75i9ABCXuAd+CRasd5KddUVVBhip74PweIo5Xw=;
        b=iftZzKrQHeTo0gvH12SSzf3fkc3DEEA1jeIkA46Z8+AQfnbparg35jzqL5ayJpkTxg
         jJtNroZP/k7HhAOvfX9fZVIb1u/MFaVv3694BDmCpXyNGP+mFv+FwVtwqyTPCAi8OuBi
         91zN7MxCJ/+RGKhnyKeZ8sO1Ci+v9zoNBEmv7EknOQYsBuOUeVzNwaIICTdxb/+yBDPB
         +E2+J+62Q3+tf7JpF/0XtuH+tZ/D6qUeVdfFhPOL+9Ifrc8cX2safK46+NfB1H7R6TWm
         tact+550vWN5dUghhpiE+1wKDR6b3ukg7EE5+86lBR/+0cAvzKspjVIgDS/MgXYL5gmV
         zmJA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530VwVsCRQCQmPL5aweL64wlWHqhG/yVVC3cBECOTxl+3xmKnftK
	lHii6SO+99IE0gERBTzxPxU=
X-Google-Smtp-Source: ABdhPJx1/NLZtJJbuZQ2j0MZRMLj+7MIzTNPnQbSaO0iq+qieqJZPbilpbyYDdRV11p8xjtKS+V+aw==
X-Received: by 2002:a37:614e:: with SMTP id v75mr27273579qkb.452.1625883920945;
        Fri, 09 Jul 2021 19:25:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:1949:: with SMTP id q9ls2593771qvk.4.gmail; Fri, 09
 Jul 2021 19:25:20 -0700 (PDT)
X-Received: by 2002:a0c:cc0c:: with SMTP id r12mr33486345qvk.26.1625883920498;
        Fri, 09 Jul 2021 19:25:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625883920; cv=none;
        d=google.com; s=arc-20160816;
        b=h/iGATU+q5SYukQ7vib01O4LvjrJnqitcA/2NeXLmTgGkmh5K1MGQm1huzU2/IXwX7
         +Nj7YAqWX1JcXpJqLTnYKUMyjsVPJH0IPiIPAhg/dm5M8IepAQw3vmY9X3HrUvwnm+hK
         G1Wwc+DDl568HW66SDOaDSPdQgI2Fx9+lPnt6P2a0LNadIAmEqVmeGMjjN5REx8yphuZ
         6elRwTes2IXwjo2doCqqjIXVPi/5TmEYJuBaq3Qwdksk3Zr+cGIwvOZO+PVnpZrzloVR
         80iMpH1TzW1hDkJbLEvWBz8RxtSZfBZwalSmDa9xAiXfd8oQzMp85m2UCLGlWkdOGJ1v
         XCBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XfvB/olUAdvtKtX3cUeFT/GiuFosnmUGA4LPNbCniSA=;
        b=GRe4tPaGodYTL928cff1RGhnzhRwp2kM6q0lx9kbV7AhYVCX/9gskiUrL5l1nU5d2b
         lj9OlIMmFj0ldbZzCGxd9hGBNt5ciA5AFUAh3ZgMSUWW/U0+sovqHYynI6pf4QnLexep
         G6J4+WyqDRKGUIpJLTIGjSYxbCKhFKWlvwEZWujiDGy5Ij59NSMK6QpgcR8UWVr3JgSX
         bQKO4sI7tcVX3VakhicucUo2qGaLFohlKfErj5xj8O8yZYpcMD4ed7liyUSEJ8nHX12m
         Jnv6hAycnsOdtEhsZ1cWeeuzEg2L2oemBwBcuWxQ+t5UnJQIMWzhblHqvV0Hcvxo+DZt
         aYYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ovNSWASC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c19si465261qtx.4.2021.07.09.19.25.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:25:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 93B53613EE;
	Sat, 10 Jul 2021 02:25:18 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 38/93] scsi: iscsi: Fix conn use after free during resets
Date: Fri,  9 Jul 2021 22:23:32 -0400
Message-Id: <20210710022428.3169839-38-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022428.3169839-1-sashal@kernel.org>
References: <20210710022428.3169839-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ovNSWASC;       spf=pass
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
index 67ac0a46889c..bd050befbafb 100644
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
@@ -923,20 +918,21 @@ iscsi_data_in_rsp(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
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
@@ -1784,15 +1780,14 @@ EXPORT_SYMBOL_GPL(iscsi_target_alloc);
 
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
@@ -1815,8 +1810,8 @@ static int iscsi_exec_task_mgmt_fn(struct iscsi_conn *conn,
 		return -EPERM;
 	}
 	conn->tmfcmd_pdus_cnt++;
-	conn->tmf_timer.expires = timeout * HZ + jiffies;
-	add_timer(&conn->tmf_timer);
+	session->tmf_timer.expires = timeout * HZ + jiffies;
+	add_timer(&session->tmf_timer);
 	ISCSI_DBG_EH(session, "tmf set timeout\n");
 
 	spin_unlock_bh(&session->frwd_lock);
@@ -1830,12 +1825,12 @@ static int iscsi_exec_task_mgmt_fn(struct iscsi_conn *conn,
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
@@ -2195,17 +2190,17 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
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
@@ -2220,7 +2215,7 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 		 */
 		spin_lock_bh(&session->frwd_lock);
 		fail_scsi_task(task, DID_ABORT);
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		memset(hdr, 0, sizeof(*hdr));
 		spin_unlock_bh(&session->frwd_lock);
 		iscsi_start_tx(conn);
@@ -2231,7 +2226,7 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 		goto failed_unlocked;
 	case TMF_NOT_FOUND:
 		if (!sc->SCp.ptr) {
-			conn->tmf_state = TMF_INITIAL;
+			session->tmf_state = TMF_INITIAL;
 			memset(hdr, 0, sizeof(*hdr));
 			/* task completed before tmf abort response */
 			ISCSI_DBG_EH(session, "sc completed while abort	in "
@@ -2240,7 +2235,7 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
 		}
 		fallthrough;
 	default:
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		goto failed;
 	}
 
@@ -2297,11 +2292,11 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
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
@@ -2310,7 +2305,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 		goto unlock;
 	}
 
-	switch (conn->tmf_state) {
+	switch (session->tmf_state) {
 	case TMF_SUCCESS:
 		break;
 	case TMF_TIMEDOUT:
@@ -2318,7 +2313,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 		iscsi_conn_failure(conn, ISCSI_ERR_SCSI_EH_SESSION_RST);
 		goto done;
 	default:
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		goto unlock;
 	}
 
@@ -2330,7 +2325,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 	spin_lock_bh(&session->frwd_lock);
 	memset(hdr, 0, sizeof(*hdr));
 	fail_scsi_tasks(conn, sc->device->lun, DID_ERROR);
-	conn->tmf_state = TMF_INITIAL;
+	session->tmf_state = TMF_INITIAL;
 	spin_unlock_bh(&session->frwd_lock);
 
 	iscsi_start_tx(conn);
@@ -2353,8 +2348,7 @@ void iscsi_session_recovery_timedout(struct iscsi_cls_session *cls_session)
 	spin_lock_bh(&session->frwd_lock);
 	if (session->state != ISCSI_STATE_LOGGED_IN) {
 		session->state = ISCSI_STATE_RECOVERY_FAILED;
-		if (session->leadconn)
-			wake_up(&session->leadconn->ehwait);
+		wake_up(&session->ehwait);
 	}
 	spin_unlock_bh(&session->frwd_lock);
 }
@@ -2399,7 +2393,7 @@ int iscsi_eh_session_reset(struct scsi_cmnd *sc)
 	iscsi_conn_failure(conn, ISCSI_ERR_SCSI_EH_SESSION_RST);
 
 	ISCSI_DBG_EH(session, "wait for relogin\n");
-	wait_event_interruptible(conn->ehwait,
+	wait_event_interruptible(session->ehwait,
 				 session->state == ISCSI_STATE_TERMINATE ||
 				 session->state == ISCSI_STATE_LOGGED_IN ||
 				 session->state == ISCSI_STATE_RECOVERY_FAILED);
@@ -2460,11 +2454,11 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
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
@@ -2473,7 +2467,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 		goto unlock;
 	}
 
-	switch (conn->tmf_state) {
+	switch (session->tmf_state) {
 	case TMF_SUCCESS:
 		break;
 	case TMF_TIMEDOUT:
@@ -2481,7 +2475,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 		iscsi_conn_failure(conn, ISCSI_ERR_SCSI_EH_SESSION_RST);
 		goto done;
 	default:
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		goto unlock;
 	}
 
@@ -2493,7 +2487,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 	spin_lock_bh(&session->frwd_lock);
 	memset(hdr, 0, sizeof(*hdr));
 	fail_scsi_tasks(conn, -1, DID_ERROR);
-	conn->tmf_state = TMF_INITIAL;
+	session->tmf_state = TMF_INITIAL;
 	spin_unlock_bh(&session->frwd_lock);
 
 	iscsi_start_tx(conn);
@@ -2800,7 +2794,10 @@ iscsi_session_setup(struct iscsi_transport *iscsit, struct Scsi_Host *shost,
 	session->tt = iscsit;
 	session->dd_data = cls_session->dd_data + sizeof(*session);
 
+	session->tmf_state = TMF_INITIAL;
+	timer_setup(&session->tmf_timer, iscsi_tmf_timedout, 0);
 	mutex_init(&session->eh_mutex);
+
 	spin_lock_init(&session->frwd_lock);
 	spin_lock_init(&session->back_lock);
 
@@ -2904,7 +2901,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 	conn->c_stage = ISCSI_CONN_INITIAL_STAGE;
 	conn->id = conn_idx;
 	conn->exp_statsn = 0;
-	conn->tmf_state = TMF_INITIAL;
 
 	timer_setup(&conn->transport_timer, iscsi_check_transport_timeouts, 0);
 
@@ -2930,8 +2926,7 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 		goto login_task_data_alloc_fail;
 	conn->login_task->data = conn->data = data;
 
-	timer_setup(&conn->tmf_timer, iscsi_tmf_timedout, 0);
-	init_waitqueue_head(&conn->ehwait);
+	init_waitqueue_head(&session->ehwait);
 
 	return cls_conn;
 
@@ -2966,7 +2961,7 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 		 * leading connection? then give up on recovery.
 		 */
 		session->state = ISCSI_STATE_TERMINATE;
-		wake_up(&conn->ehwait);
+		wake_up(&session->ehwait);
 	}
 	spin_unlock_bh(&session->frwd_lock);
 
@@ -3041,7 +3036,7 @@ int iscsi_conn_start(struct iscsi_cls_conn *cls_conn)
 		 * commands after successful recovery
 		 */
 		conn->stop_stage = 0;
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		session->age++;
 		if (session->age == 16)
 			session->age = 0;
@@ -3055,7 +3050,7 @@ int iscsi_conn_start(struct iscsi_cls_conn *cls_conn)
 	spin_unlock_bh(&session->frwd_lock);
 
 	iscsi_unblock_session(session->cls_session);
-	wake_up(&conn->ehwait);
+	wake_up(&session->ehwait);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_start);
@@ -3142,7 +3137,7 @@ static void iscsi_start_session_recovery(struct iscsi_session *session,
 	spin_lock_bh(&session->frwd_lock);
 	fail_scsi_tasks(conn, -1, DID_TRANSPORT_DISRUPTED);
 	fail_mgmt_tasks(session, conn);
-	memset(&conn->tmhdr, 0, sizeof(conn->tmhdr));
+	memset(&session->tmhdr, 0, sizeof(session->tmhdr));
 	spin_unlock_bh(&session->frwd_lock);
 	mutex_unlock(&session->eh_mutex);
 }
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index b3bbd10eb3f0..2b5f97224f69 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710022428.3169839-38-sashal%40kernel.org.
