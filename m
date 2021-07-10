Return-Path: <open-iscsi+bncBDTZTRGMXIFBBHMLUSDQMGQEWQYWI7I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5AB3C2E80
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:27:42 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id z9-20020a17090aa489b02901724a633c70sf9421274pjp.6
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:27:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625884061; cv=pass;
        d=google.com; s=arc-20160816;
        b=umKfDXX//3jpeQ6SVXFhiF4niAsUnJ89XSnrPNn45Y2fJdmDm/7X/MJSK86UXkIzvv
         fAk9T5B12rbdj4lqq/YI3OqUY6KLOrESSpqPVUddjE385816Lu7JmPYojD5Azg4UwK3s
         rra5mekMM492l6CHOK4MuWBcjkPVSCT7Whr5Gbgnsgjuu+dN2LijmeDkxam7S8OoCEXp
         WZg6CkppsV6q1VV2tkeiLO82pIP76WKEq1TGYqMCSM2vU99kuEuREfS1genQzPOwI/ze
         Kxf13zRYIdtgB9TbdinidqWUk+OaJS6vrwz19uyrrHbVsliNaNlskLirbtE3HuNyr1yC
         um8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=WBQWYItuDM59feq+xpkP4YCg9f7xsER/V7QjofLIpzU=;
        b=b5P2LSd5lcxg0sM8tM3A/8WS6uOINMTtQQgTZtZPeJO9wxYU6qS/Zn0AEMjzbwnxcz
         YICXJbfRpwyuzKSzS+gfBEl5xcm+ukFNuX9FNDL7cvhAq/TlJwKpNav1qGe++t1kHLR8
         4t7rhENIKgrG7rJlxLFlh0Pfi4twGRZzfMq/mmhCpXHPq0WTVo4af/a8y6n68TOIMqH8
         6gEu3B2TiE+edir3vSIktWlCBkNm3eh/CAOOhQoJQyNzeFpVOySF833Id2jcJVRkAfDW
         2fV3P1RWkdvMRQTuWV/yU4YqAvQ7oiaCFD6iQmpVwWlxoG7j4lu6vOhyUsTqLRUdlFPY
         Ma4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rqB1ZwwN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WBQWYItuDM59feq+xpkP4YCg9f7xsER/V7QjofLIpzU=;
        b=kqMqrMsBKiE/wFZ2dAHhFcb65pP6tElio8Nz4ph9zzwQPlFZK6NQiuHXK7cVsybpNT
         nvG46HF6XJUaAxNs7g76Ij0/c1nVAuKTac4sgCWfACorxSV6J81v/6vLP6OfABPXBdgQ
         z4P4hsNBE/QuvGKICMKBsa67uQP+Nm3eLhvy1tIdvvY1M9BwBG+TQBUFa68fkIK+wRyQ
         0vkGgRXhjS+3J4fovfMLZBMrmUucJtGvq0AbF+jEnTn6f8Q0Wf4dUcuGuXeKVLm18Ujv
         +3r22klJIRokbfrTLJNUblAgtRCJe31WgkJORekv1DLWKOwJf/fM73xZ+J0sfTTZGAKq
         KxYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WBQWYItuDM59feq+xpkP4YCg9f7xsER/V7QjofLIpzU=;
        b=jkr8TR1VN38CMyqf902FPMGR6D15rL+7w13XcYlyCD3N9bSK2JZd4wgFhypUbbHTPN
         AvfhKmb/8Vxj9YqAZihQsUU9ciAwocE7eyklhQBxFK+2mhbZ+GnuLX+rcYRs/cbp1Cg9
         FPSSEHicCRk5/2tvjb61YPEFuNexQEaxcwmY3udNmQPMCSM76fHRpu4+a5IRZLu6Mmtw
         elrztvEIeErvQGJXCt7kzMvbSaGAIG9mvJNVPZgNh0EXpGKl1fZUpoUCV7XRb1Z5LG4b
         ZckLNLnXdezzccLkqQNH7G8PMCKdxIqotDici4aBx3L7wLaHQVycQrrz4gBxuym99ELj
         zfKQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530wsA1NjsPo8Mp7s2Tc4FL+yC0j4mxpSBUy+5sQ9Q9XwJqZZtgt
	1IzstwazK1WiN84OqrrdW6o=
X-Google-Smtp-Source: ABdhPJzPpafCa+gqGCWqMurGFCZZaWtv381y2wMcaG7IaN2q730V7QBKfQ3HIalX2BoZIPKzx3sdgw==
X-Received: by 2002:a17:903:228d:b029:129:af0c:5fe2 with SMTP id b13-20020a170903228db0290129af0c5fe2mr18902527plh.20.1625884061598;
        Fri, 09 Jul 2021 19:27:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:7d90:: with SMTP id a16ls3219276plm.7.gmail; Fri, 09
 Jul 2021 19:27:41 -0700 (PDT)
X-Received: by 2002:a17:90b:3b92:: with SMTP id pc18mr11020607pjb.21.1625884060923;
        Fri, 09 Jul 2021 19:27:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625884060; cv=none;
        d=google.com; s=arc-20160816;
        b=L5MHcO+f4yRE209C/1eQfVZ1qdPl9fFxDVRfSIER6jtTL/7MiuOpImdt89fHTIJDxP
         udgpbi+mDCzWsT83nx/EhnVMSJC0HkMHILxEKoiWsfCbxqmK+T0aM84hC4OsQB4FrI9p
         4KucS/Ewrx5/mtP+eDD+8GlQ1ceREggjwJSJK9WWkQ9hBHC9ndEfyPeeQZR9Uahu99DI
         XnnXWgrrlfsFkTJg6x4Z74jneGt0moRQeenptHYnUL8vewRls1FPF+ylUm8nt036aQb8
         4/Ji1PN5ZsIFngBq7znKXnNDWNh4tx1hoSI0/9NoYcIc+SOk+Uus5lv+rpmmURxVCC/z
         ioSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bLX7wK2Qt8ZVUJMFNJlOi/XPWhmRdBLmWTNB4ceNlbs=;
        b=PDABbPuMC7Ri9yNOQoYz8ASu9Eslla3jDSdjptxw0PLdLZck3rnPWCQv+oDaEKZ2kA
         UTZnTN8JCGvu2aPzniC5AJH86k/yvIsdDeEYqBbC15jo2dL7mp/l9U9nYrWk9O922agW
         nUt6UgTmNOGhcx1D9RXswiaaA+I0KVwCs1PYBb6/JnyWJfydqTYKYlqwYJUGypt/ug46
         XOuAZMAeFSoajzlGPacMZ79O6ac6hW5/WcfTSKjepSYc2EzVptDjBBnj+bF6VX50xASZ
         SLpGDtSUWWs7rJTRVVLoekm+kIzPlZ2tz6rJoNtp0EmQtPk3zYcJQPvj6GM7hNBwXd8E
         f2kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rqB1ZwwN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bt9si958468pjb.3.2021.07.09.19.27.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:27:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C70316141A;
	Sat, 10 Jul 2021 02:27:39 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 24/63] scsi: iscsi: Fix conn use after free during resets
Date: Fri,  9 Jul 2021 22:26:30 -0400
Message-Id: <20210710022709.3170675-24-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022709.3170675-1-sashal@kernel.org>
References: <20210710022709.3170675-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rqB1ZwwN;       spf=pass
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
index b9981078375d..eeba6180711c 100644
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
 		/* fall through */
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
@@ -2798,7 +2792,10 @@ iscsi_session_setup(struct iscsi_transport *iscsit, struct Scsi_Host *shost,
 	session->tt = iscsit;
 	session->dd_data = cls_session->dd_data + sizeof(*session);
 
+	session->tmf_state = TMF_INITIAL;
+	timer_setup(&session->tmf_timer, iscsi_tmf_timedout, 0);
 	mutex_init(&session->eh_mutex);
+
 	spin_lock_init(&session->frwd_lock);
 	spin_lock_init(&session->back_lock);
 
@@ -2902,7 +2899,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 	conn->c_stage = ISCSI_CONN_INITIAL_STAGE;
 	conn->id = conn_idx;
 	conn->exp_statsn = 0;
-	conn->tmf_state = TMF_INITIAL;
 
 	timer_setup(&conn->transport_timer, iscsi_check_transport_timeouts, 0);
 
@@ -2928,8 +2924,7 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 		goto login_task_data_alloc_fail;
 	conn->login_task->data = conn->data = data;
 
-	timer_setup(&conn->tmf_timer, iscsi_tmf_timedout, 0);
-	init_waitqueue_head(&conn->ehwait);
+	init_waitqueue_head(&session->ehwait);
 
 	return cls_conn;
 
@@ -2964,7 +2959,7 @@ void iscsi_conn_teardown(struct iscsi_cls_conn *cls_conn)
 		 * leading connection? then give up on recovery.
 		 */
 		session->state = ISCSI_STATE_TERMINATE;
-		wake_up(&conn->ehwait);
+		wake_up(&session->ehwait);
 	}
 	spin_unlock_bh(&session->frwd_lock);
 
@@ -3039,7 +3034,7 @@ int iscsi_conn_start(struct iscsi_cls_conn *cls_conn)
 		 * commands after successful recovery
 		 */
 		conn->stop_stage = 0;
-		conn->tmf_state = TMF_INITIAL;
+		session->tmf_state = TMF_INITIAL;
 		session->age++;
 		if (session->age == 16)
 			session->age = 0;
@@ -3053,7 +3048,7 @@ int iscsi_conn_start(struct iscsi_cls_conn *cls_conn)
 	spin_unlock_bh(&session->frwd_lock);
 
 	iscsi_unblock_session(session->cls_session);
-	wake_up(&conn->ehwait);
+	wake_up(&session->ehwait);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_start);
@@ -3140,7 +3135,7 @@ static void iscsi_start_session_recovery(struct iscsi_session *session,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710022709.3170675-24-sashal%40kernel.org.
