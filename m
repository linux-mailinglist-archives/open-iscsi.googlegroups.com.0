Return-Path: <open-iscsi+bncBDTZTRGMXIFBBVPX7OJAMGQEFHRKZEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3BB50775B
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:13:43 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id h12-20020a05651211cc00b00471af04ec12sf719525lfr.15
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:13:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650392022; cv=pass;
        d=google.com; s=arc-20160816;
        b=HK5hw5jBBKVSAlNONu1WUdzQEPXVru9Ox53XB0/3gdAQuIh9kobJbWBBhBLXji76OP
         5paSRfq0TzAg5EjteyIp2uEq+B7HPDFoVM9O5gjCwdhxJipQWtjf4PwGtyaOM8iSFkBA
         hGuVCzbzUmWpEX/gnUpbWIWcxB9VkRexBetHmHdECM5OxqZata4prmdH7f2tB4PFv3G6
         FkSk/p6mR+0b68v6MU+sPMVh/y9ZFklozl6tc+y5y1aj35Y7+y7TT+8xjyT9tQYquMP7
         pnLMX/kfx9z2D90UnWg4wn/Fi4HuWTmOl8m8AKae7/NklOD2mJoP6FmZmLQOkOhkj+c/
         M5vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ok1Uqz41vB/KCseZBqOY+EJrZl0+MIIZHsoosnZw+B4=;
        b=Eu1REARRaVc9j9EU4+DgQRW0ueEJ7tJs/AnR38YOtJ2kwApyPUILsHAN/RXcN1bU6W
         1EAcqLOnREAqJhOLXCu91TYWCKL/Q0tdqzysP0oaXqP2QJp2gECct6/55MYf7wtQFRBv
         czdeKcok81S0D14/dydtULHd48ylc/brEhDubMPXWlQSgbFNaX2USQoXUOp7SCiFHKeU
         PeQ3Sjtl9dmAG4uB4LrGJKhXbyN+ANI34AqRJMV/V2kdCcg4HwQY0gyLCfAr7xw4QlKM
         qcB6lsvSn6su+mf416B/sEqwmL4tWIzB402ouHYjZhZw4U/YCYuItE/C0wS+Exj9CVMF
         n5zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eIGxiNjH;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ok1Uqz41vB/KCseZBqOY+EJrZl0+MIIZHsoosnZw+B4=;
        b=Jzktjq1nA4rUWCb9WzBuK94QP8o1ZG8BlmmzWu0ew9Xv90AeRpmTYZECo0BPgzEYmS
         PX3v3S+SYiFdZquRxHknafSgZ5MCGWT0kxiwMhbRuFeCw6YpcsD7X4MUiU74CeF/OvQ2
         7vE0fwRHbim0zPYoy7+gXM440pm6HfAZ0o4QG183HDsog1bqwwPaaDL5lm61BnqrX/gg
         qkv9Xshje5wZn3q3fkpFR1/DsT6KY0uhL5rkXKKioejN5b3Q4W0icRW81ovzDhRLHmJ2
         K8/2sp9qIit6w5hMoghA3uJ0e5T06CEupW6L3ZArMH0MYio5vd3HCPPunHzjpKOkrg/T
         VxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ok1Uqz41vB/KCseZBqOY+EJrZl0+MIIZHsoosnZw+B4=;
        b=yfhoqwBRYICy31eGUjzhcN0QwXs4TJunNNzOZCCRGi3+6CVsc2vWli/wne3V8Zq80y
         DZo0B7lVCmtXr7tpI+mpVWCbEsQhdm2HiTv844rFzfliYYHB3xXf9JFXNKNSbEt7mFvT
         7A2eZQD6t0xJzyFj73WxvbbLYuJZf0tR526eRnDE+FXowfOkNPMZI2xMclaHDie33G2G
         gaH7JQHFEZc92/wo5b/QkteEz9DhxZjGQPDZnqEOtdho05FaAUQsiH6TC2Rr8W6j21aT
         6rOLY5fiOqih+ZGleLeuMT0+HfIQ0DGxTUr86krZWXC2YrtOttiFgOOoucLRqbWPREKM
         djEg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531hQRKHZVvRZUPyiHUnSwXdbU7xMcBFBU/KDeXe4R3x+iDkZklE
	5vcfRwA3+30KNcLX5qSf2F0=
X-Google-Smtp-Source: ABdhPJzw2dBe8/BmFhT9bgmsE68sTKk3EJr6g867OViCM/4LLI67rVs/LFzGB0iI+IHfc5+JwNIStA==
X-Received: by 2002:a2e:a592:0:b0:24d:751e:4d93 with SMTP id m18-20020a2ea592000000b0024d751e4d93mr11015480ljp.429.1650392022714;
        Tue, 19 Apr 2022 11:13:42 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:3e2a:b0:471:af61:f198 with SMTP id
 i42-20020a0565123e2a00b00471af61f198ls1822153lfv.0.gmail; Tue, 19 Apr 2022
 11:13:40 -0700 (PDT)
X-Received: by 2002:a05:6512:3b2b:b0:471:a6e4:43c5 with SMTP id f43-20020a0565123b2b00b00471a6e443c5mr3259114lfv.266.1650392020126;
        Tue, 19 Apr 2022 11:13:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650392020; cv=none;
        d=google.com; s=arc-20160816;
        b=gslMs5K4UqiYUXJU7NHcQWJSabhBctPe4uG9X3bQc2GhZC80w8Ix012bBj+1rudD8z
         PR6VKhPITQTQzMibu+WuRDnoyjLEimlssks2P70ip/bqXLk/CBfieoKq9E0jqpuKCtMG
         lmlpcO3pQ//k6BKqCbegfpmRzgujiSJ32McJx94LvJ2e/x1rharsNcaiSkfKFEm7Z3j6
         jLJkYYSaLN0Njb90cSSK6PGtSQlOqiR+AgpvQUbLTedIyTAlDXnSSJI17VFZpnYTd23v
         dyV0/CxwOCCO438UIiGNTZXIN3FUkP280X8g12RDbehxXUxL8gL0wbzGBSeEpRDxFQP7
         tmrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bLMzujIbUgN487PEvCgJdkcMT3wOK+nx7S870MVvKU4=;
        b=zA8wFByFHIVHpfA2xIuqIRy41pf/ImKTgkFK5xGuxgQOr6eBl3016GyQp8CD05DhUC
         eEcGPwKOOF8ZT+dtO/cDLG9vldqhykDUalt0mhWgQmlv+iA3VD64paKP4yfQLjE8bzyY
         x+u7lRXznuL05hMrMNA5MsupkC+cbwHnrzQo2tQBkvw+WgZHfSMOPWSu8EuwY4Pt6T5m
         pFldsv9pWkw0Eo8xGqWGqOVNENiieOOuiFz+hE56/86aYMuTwuyIxPRXalcttsST3jfY
         rDkOl+YJ+7e2bNRibpe2pfbciC95eqS3wJRwmByaXuYzOwQeNKnk2oi9E2+hTSiCQ9aM
         SPPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eIGxiNjH;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id f42-20020a0565123b2a00b00471259c2f94si465344lfv.9.2022.04.19.11.13.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:13:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 49F6AB81865;
	Tue, 19 Apr 2022 18:13:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 947D4C385A5;
	Tue, 19 Apr 2022 18:13:37 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Manish Rangankar <mrangankar@marvell.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	njavali@marvell.com,
	GR-QLogic-Storage-Upstream@marvell.com,
	jejb@linux.ibm.com,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com
Subject: [PATCH AUTOSEL 5.15 20/27] scsi: iscsi: Merge suspend fields
Date: Tue, 19 Apr 2022 14:12:35 -0400
Message-Id: <20220419181242.485308-20-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181242.485308-1-sashal@kernel.org>
References: <20220419181242.485308-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=eIGxiNjH;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as
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

[ Upstream commit 5bd856256f8c03e329f8ff36d8c8efcb111fe6df ]

Move the tx and rx suspend fields into one flags field.

Link: https://lore.kernel.org/r/20220408001314.5014-8-michael.christie@oracle.com
Tested-by: Manish Rangankar <mrangankar@marvell.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/bnx2i/bnx2i_hwi.c   |  2 +-
 drivers/scsi/bnx2i/bnx2i_iscsi.c |  2 +-
 drivers/scsi/cxgbi/libcxgbi.c    |  6 +++---
 drivers/scsi/libiscsi.c          | 20 ++++++++++----------
 drivers/scsi/libiscsi_tcp.c      |  2 +-
 include/scsi/libiscsi.h          |  9 +++++----
 6 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/scsi/bnx2i/bnx2i_hwi.c b/drivers/scsi/bnx2i/bnx2i_hwi.c
index 5521469ce678..e16327a4b4c9 100644
--- a/drivers/scsi/bnx2i/bnx2i_hwi.c
+++ b/drivers/scsi/bnx2i/bnx2i_hwi.c
@@ -1977,7 +1977,7 @@ static int bnx2i_process_new_cqes(struct bnx2i_conn *bnx2i_conn)
 		if (nopin->cq_req_sn != qp->cqe_exp_seq_sn)
 			break;
 
-		if (unlikely(test_bit(ISCSI_SUSPEND_BIT, &conn->suspend_rx))) {
+		if (unlikely(test_bit(ISCSI_CONN_FLAG_SUSPEND_RX, &conn->flags))) {
 			if (nopin->op_code == ISCSI_OP_NOOP_IN &&
 			    nopin->itt == (u16) RESERVED_ITT) {
 				printk(KERN_ALERT "bnx2i: Unsolicited "
diff --git a/drivers/scsi/bnx2i/bnx2i_iscsi.c b/drivers/scsi/bnx2i/bnx2i_iscsi.c
index 1b5f3e143f07..2e5241d12dc3 100644
--- a/drivers/scsi/bnx2i/bnx2i_iscsi.c
+++ b/drivers/scsi/bnx2i/bnx2i_iscsi.c
@@ -1721,7 +1721,7 @@ static int bnx2i_tear_down_conn(struct bnx2i_hba *hba,
 			struct iscsi_conn *conn = ep->conn->cls_conn->dd_data;
 
 			/* Must suspend all rx queue activity for this ep */
-			set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_rx);
+			set_bit(ISCSI_CONN_FLAG_SUSPEND_RX, &conn->flags);
 		}
 		/* CONN_DISCONNECT timeout may or may not be an issue depending
 		 * on what transcribed in TCP layer, different targets behave
diff --git a/drivers/scsi/cxgbi/libcxgbi.c b/drivers/scsi/cxgbi/libcxgbi.c
index 8c7d4dda4cf2..4365d52c6430 100644
--- a/drivers/scsi/cxgbi/libcxgbi.c
+++ b/drivers/scsi/cxgbi/libcxgbi.c
@@ -1634,11 +1634,11 @@ void cxgbi_conn_pdu_ready(struct cxgbi_sock *csk)
 	log_debug(1 << CXGBI_DBG_PDU_RX,
 		"csk 0x%p, conn 0x%p.\n", csk, conn);
 
-	if (unlikely(!conn || conn->suspend_rx)) {
+	if (unlikely(!conn || test_bit(ISCSI_CONN_FLAG_SUSPEND_RX, &conn->flags))) {
 		log_debug(1 << CXGBI_DBG_PDU_RX,
-			"csk 0x%p, conn 0x%p, id %d, suspend_rx %lu!\n",
+			"csk 0x%p, conn 0x%p, id %d, conn flags 0x%lx!\n",
 			csk, conn, conn ? conn->id : 0xFF,
-			conn ? conn->suspend_rx : 0xFF);
+			conn ? conn->flags : 0xFF);
 		return;
 	}
 
diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index cbc263ec9d66..a4f26431b033 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1392,8 +1392,8 @@ static bool iscsi_set_conn_failed(struct iscsi_conn *conn)
 	if (conn->stop_stage == 0)
 		session->state = ISCSI_STATE_FAILED;
 
-	set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
-	set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_rx);
+	set_bit(ISCSI_CONN_FLAG_SUSPEND_TX, &conn->flags);
+	set_bit(ISCSI_CONN_FLAG_SUSPEND_RX, &conn->flags);
 	return true;
 }
 
@@ -1454,7 +1454,7 @@ static int iscsi_xmit_task(struct iscsi_conn *conn, struct iscsi_task *task,
 	 * Do this after dropping the extra ref because if this was a requeue
 	 * it's removed from that list and cleanup_queued_task would miss it.
 	 */
-	if (test_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx)) {
+	if (test_bit(ISCSI_CONN_FLAG_SUSPEND_TX, &conn->flags)) {
 		/*
 		 * Save the task and ref in case we weren't cleaning up this
 		 * task and get woken up again.
@@ -1532,7 +1532,7 @@ static int iscsi_data_xmit(struct iscsi_conn *conn)
 	int rc = 0;
 
 	spin_lock_bh(&conn->session->frwd_lock);
-	if (test_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx)) {
+	if (test_bit(ISCSI_CONN_FLAG_SUSPEND_TX, &conn->flags)) {
 		ISCSI_DBG_SESSION(conn->session, "Tx suspended!\n");
 		spin_unlock_bh(&conn->session->frwd_lock);
 		return -ENODATA;
@@ -1746,7 +1746,7 @@ int iscsi_queuecommand(struct Scsi_Host *host, struct scsi_cmnd *sc)
 		goto fault;
 	}
 
-	if (test_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx)) {
+	if (test_bit(ISCSI_CONN_FLAG_SUSPEND_TX, &conn->flags)) {
 		reason = FAILURE_SESSION_IN_RECOVERY;
 		sc->result = DID_REQUEUE << 16;
 		goto fault;
@@ -1935,7 +1935,7 @@ static void fail_scsi_tasks(struct iscsi_conn *conn, u64 lun, int error)
 void iscsi_suspend_queue(struct iscsi_conn *conn)
 {
 	spin_lock_bh(&conn->session->frwd_lock);
-	set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
+	set_bit(ISCSI_CONN_FLAG_SUSPEND_TX, &conn->flags);
 	spin_unlock_bh(&conn->session->frwd_lock);
 }
 EXPORT_SYMBOL_GPL(iscsi_suspend_queue);
@@ -1953,7 +1953,7 @@ void iscsi_suspend_tx(struct iscsi_conn *conn)
 	struct Scsi_Host *shost = conn->session->host;
 	struct iscsi_host *ihost = shost_priv(shost);
 
-	set_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
+	set_bit(ISCSI_CONN_FLAG_SUSPEND_TX, &conn->flags);
 	if (ihost->workq)
 		flush_workqueue(ihost->workq);
 }
@@ -1961,7 +1961,7 @@ EXPORT_SYMBOL_GPL(iscsi_suspend_tx);
 
 static void iscsi_start_tx(struct iscsi_conn *conn)
 {
-	clear_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
+	clear_bit(ISCSI_CONN_FLAG_SUSPEND_TX, &conn->flags);
 	iscsi_conn_queue_work(conn);
 }
 
@@ -3324,8 +3324,8 @@ int iscsi_conn_bind(struct iscsi_cls_session *cls_session,
 	/*
 	 * Unblock xmitworker(), Login Phase will pass through.
 	 */
-	clear_bit(ISCSI_SUSPEND_BIT, &conn->suspend_rx);
-	clear_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
+	clear_bit(ISCSI_CONN_FLAG_SUSPEND_RX, &conn->flags);
+	clear_bit(ISCSI_CONN_FLAG_SUSPEND_TX, &conn->flags);
 	return 0;
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_bind);
diff --git a/drivers/scsi/libiscsi_tcp.c b/drivers/scsi/libiscsi_tcp.c
index 2e9ffe3d1a55..883005757ddb 100644
--- a/drivers/scsi/libiscsi_tcp.c
+++ b/drivers/scsi/libiscsi_tcp.c
@@ -927,7 +927,7 @@ int iscsi_tcp_recv_skb(struct iscsi_conn *conn, struct sk_buff *skb,
 	 */
 	conn->last_recv = jiffies;
 
-	if (unlikely(conn->suspend_rx)) {
+	if (unlikely(test_bit(ISCSI_CONN_FLAG_SUSPEND_RX, &conn->flags))) {
 		ISCSI_DBG_TCP(conn, "Rx suspended!\n");
 		*status = ISCSI_TCP_SUSPENDED;
 		return 0;
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index 4ee233e5a6ff..bdb0ae11682d 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -52,8 +52,10 @@ enum {
 
 #define ISID_SIZE			6
 
-/* Connection suspend "bit" */
-#define ISCSI_SUSPEND_BIT		1
+/* Connection flags */
+#define ISCSI_CONN_FLAG_SUSPEND_TX	BIT(0)
+#define ISCSI_CONN_FLAG_SUSPEND_RX	BIT(1)
+
 
 #define ISCSI_ITT_MASK			0x1fff
 #define ISCSI_TOTAL_CMDS_MAX		4096
@@ -199,8 +201,7 @@ struct iscsi_conn {
 	struct list_head	cmdqueue;	/* data-path cmd queue */
 	struct list_head	requeue;	/* tasks needing another run */
 	struct work_struct	xmitwork;	/* per-conn. xmit workqueue */
-	unsigned long		suspend_tx;	/* suspend Tx */
-	unsigned long		suspend_rx;	/* suspend Rx */
+	unsigned long		flags;		/* ISCSI_CONN_FLAGs */
 
 	/* negotiated params */
 	unsigned		max_recv_dlength; /* initiator_max_recv_dsl*/
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181242.485308-20-sashal%40kernel.org.
