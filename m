Return-Path: <open-iscsi+bncBDTZTRGMXIFBBCPX7OJAMGQE2GFFFYI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 9494550774D
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:12:27 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id b9-20020a05651c098900b0024b4e65e7edsf4040082ljq.3
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:12:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650391947; cv=pass;
        d=google.com; s=arc-20160816;
        b=AhRnugB/XnjGtmjW3ZfzAUCySYCP4LLX/cjcG18rDEnozGS7160tF0rjWRjqxUdcGa
         44CCVHYq+jaLa+8oUbFT8NHqB7smSCRYU7JGcxN+jYly0i2jv91OrVcSG1Mq8+ntOm6g
         nrflFCVXNr5n2/9WyKny4U0rzUq4zDnFmChCOT+ar8Z0CnPNJ+ga417PkfsCVK8Aqs2M
         x19dCQ2gJOIbJ89bUees8DGSA7jhw/TK8GbHvCMqpCip+rrswIyTd+heQ2akIplWaPYZ
         q05dvxY5ReowFIrkC/X4496CR9j4YYIcTKx/DyAs88sJX1Q25PUuMy6xV7sGlkITasDa
         C6YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=4SHNT5L0GEevZGy401jQROG2LLTKMLAHylWRl7NSJDk=;
        b=F1rj4bisK87y5n432YpmSrqtcAQZE/euNadAeyyKKGRZLSM9MVr5qQsbyqqTVIZPNd
         niLFz7oj9KNcC2jLMf3rGtQ9zeR8NsRSuDNieJjNo4g5KQQyH5G5JEYzhi28jUfE/58e
         +FQZ9MQqF9Sp1gaEd3bMuAWf1uNENbTTHSStHDgKULR3zKMXtYgkBmROmDLGodHSSfLN
         oOAsYWa/J1QbrqqGC9pzzznUv3UVTeMJGnReHzAc0Clqsv8CczfeTczw7JHF1e1JO2Id
         3kI/1ZbyXbyx9yiu6nIg71dxLTXGLayb6pJRryN6PoaKX3d8T9+Tiqrhqhf1eBB30W62
         +9RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=doSFGmML;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4SHNT5L0GEevZGy401jQROG2LLTKMLAHylWRl7NSJDk=;
        b=HJHeFgvCzepbUsmoFE30r0MT2gqzMkbYdlZKBKEdG6bthHmThNDy66r26fmL2Yxe5O
         jrbMa67vmZOn8v/hpCE1zAA7UirmUogsyYKtNtM4uJBhj8OkOC2A1VDLde4AQqj15nxw
         sy/2541SwOEaB5yYk5L1Gz7w4HIq3hruB4n/4rGdGIBsHvUAVz9nNmObj5VVIf4iLySK
         V/Io8HTB49WkmAdVVosKwpBk+O1jfNLIG+LLQ2TT7NPuDejufKElc9faY+b3+3BP03Ek
         uzUTXA8swW7pinygddBF73jlLLab4jmCdp24jEzDIFzOq98PsBBunSHkNtAoQXctBYOC
         Jw0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4SHNT5L0GEevZGy401jQROG2LLTKMLAHylWRl7NSJDk=;
        b=jF0wWvfxNWNSbWmJF8LNx0gxRKnAktEYR9F96nRVjaILGEncSZl6LJA0IiRMEjCliY
         9eTuvCo3t0SiYq1IhNVwYy4qtusKAi1wHQ55dDzRPqpW8D25bxLHq2IGMdEQQyCIN1Mc
         oU9I2Xpi9P4fBEce/t+YTw9FlY0e+4aoZhe+vrpd2595OP+gNK1fSfL3c/3YxrimWW1u
         8WVOE4z3q6FG/9sCoSDlnD2scnt7l89gJ5MkHV+42Gh8qy1MeJ5SUWseh9t3vvMqbsMU
         eol5kVEK9zrUPXV4cjEN10xdPfA8wrdk9gjqajnf0Nf9HIHN838eBO01/8hFYUQr780O
         U0cw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5329oGGg3vRtSqzxzihNle0UeZhWXhQVG/WjQ98NF+iRDYnI6vMH
	s/LGbZp6SZPktpja9aC9wAo=
X-Google-Smtp-Source: ABdhPJzDhatzPOZW/sja646dCbno+xvLyqm71RUz8YVrfxLLM2Z0tGxozWDnLP2fO2rX/RWiLG0PZg==
X-Received: by 2002:a05:6512:3d15:b0:471:8e6f:c83f with SMTP id d21-20020a0565123d1500b004718e6fc83fmr8061739lfv.688.1650391946958;
        Tue, 19 Apr 2022 11:12:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:3e2a:b0:471:af61:f198 with SMTP id
 i42-20020a0565123e2a00b00471af61f198ls1819999lfv.0.gmail; Tue, 19 Apr 2022
 11:12:24 -0700 (PDT)
X-Received: by 2002:a05:6512:4cf:b0:46f:b2e4:5c67 with SMTP id w15-20020a05651204cf00b0046fb2e45c67mr11991079lfq.348.1650391943976;
        Tue, 19 Apr 2022 11:12:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650391943; cv=none;
        d=google.com; s=arc-20160816;
        b=RCfLaQn/gMjzTqr6RcHk5NQYW+Io2C5TS1tCNgZe1Ebe1+yUKy+4CTZmsUB1TlnWKH
         0yGEbYSoOj9/UOzwAq6aDbQy3iBLsrYhgzffLGxyKgfkOd+IjUhKgnJh6Tzamh8ltknX
         3nKWX1ywR9qnZoKndQW/874rsWGpnuVA5zoAGSU9YUQMwig2JQ9Ygq4gs4KKiK4wBpe9
         S6F1NRcx4aBzAhU1SWjj3bszekgdLBzHEvw67awrHhQRZf1BqPZ5cfIIqN/Bv8xIXJp2
         zRmUwfOQOzXzqFwXLCFPg/Ps2eoyniukFJKwhSyAx4HnLRje0eU8YtmNeKi6hyWYmbeD
         THnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RRbr8310yE7ktOlO3PN6AEyo75p4ODFTOHvfouSuYfY=;
        b=TP9SB5bRNQ24dsw51LCCrnOuLdl4GHLflcF208cPh7h9iZ+5xwARIfuPndx7FHRu9y
         nqM/cAJikKML8sVvmm/Qx+MnaMujYraQ6MM0598WsXizqfhfRJT4/q0Y69NbJB4QG4ed
         kGyl+AihAVtEiD3FFYPWfhPMBzQwO/1BsDsGtgkYly1q27boItc6u7gsB2hl4mc7/Zr5
         SgUVKWNvFdNs/w5s5nBlq8wLEDCgFhQFvTcNwuJQlq5XHKMzS+7N5eDe0nDU81OTZHpP
         QaCnk9aVF63wx85w3wc9sO5Tcp6RX4t3MoaKyhTM7su83QgUZtJmjJ7qt9mR8SOVFXzG
         PEEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=doSFGmML;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id f42-20020a0565123b2a00b00471259c2f94si465140lfv.9.2022.04.19.11.12.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:12:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 756A1B818EE;
	Tue, 19 Apr 2022 18:12:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 618ACC385A7;
	Tue, 19 Apr 2022 18:12:20 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.17 25/34] scsi: iscsi: Merge suspend fields
Date: Tue, 19 Apr 2022 14:10:52 -0400
Message-Id: <20220419181104.484667-25-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181104.484667-1-sashal@kernel.org>
References: <20220419181104.484667-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=doSFGmML;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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
index e21b053b4f3e..a592ca8602f9 100644
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
index 059dae8909ee..073c4db79094 100644
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
 
@@ -3323,8 +3323,8 @@ int iscsi_conn_bind(struct iscsi_cls_session *cls_session,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181104.484667-25-sashal%40kernel.org.
