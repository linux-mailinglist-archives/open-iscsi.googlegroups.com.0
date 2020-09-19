Return-Path: <open-iscsi+bncBD54HHNYIIIK7PEY7MCRUBHGGFU6Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C13270EC1
	for <lists+open-iscsi@lfdr.de>; Sat, 19 Sep 2020 17:05:20 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id p3sf3016248ljc.7
        for <lists+open-iscsi@lfdr.de>; Sat, 19 Sep 2020 08:05:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600527920; cv=pass;
        d=google.com; s=arc-20160816;
        b=MB1uRPINH5JZt3W30Db6JmfMVUrUiss3GeZs/rL2V/yo9CGf/0yc0m+IhUBAhzU/Mz
         MRCwCy7UpgtmxwMz+MHmPJcZKnxHpQAJO9r6gbPsNH9um+dxBRp313KDvs4M56lL5X13
         kIEf3RpDqPDstmoNO42OpSHPBJAXr3Yl+/4yfo53bowuo5UczzsuEW3ulC1/eBgxxBM2
         PyuDmv4XPOvrYqkYXIlhIdvJ0OQ/DJtlG99xP3ir9AZY8kBCm9t2RSBNOL/gAnL2xEG/
         gCCZruJCWaa6oTGIJRHxGyyB0JGETRpB02KkeB5qPpgsNjVtI1XHxkWDn4dtS/vOhbrD
         EJFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=akHlwP6xMqm0O2esOdoQSS4/Byxszw282pFTOYu5KCU=;
        b=yurM4ANUX95KMvCvf2EmK8N/6Wn+gpEKkE/91jN/+SNZMhFNEyri9Paak4o663iQni
         yMztxIyKKMv0bUQuzHtYpnckxBYer8N1Oy/xNUTmu5XmeRtpYjeGEAp/k0sk84jyPtqs
         YkQVbMNkR2TMEK9NRsf/7xYbCudsmzifSoQx7v7voENZu3giFAPhcj/XrDzmp2puhuI3
         oxhweO2W5erhNpKxBrCmbUBS3ZCa/9A1QLWOJi1YLU4mK2pWfbCU9s5ZtoVQVmBRYTsM
         YABOX3GRUyeVDEdqtDhNO7noVps6XwuydzZ+sYNeb3LC/zE+5XSbN1GTcyaCAaltsKT1
         +elw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=akHlwP6xMqm0O2esOdoQSS4/Byxszw282pFTOYu5KCU=;
        b=bw47R9twX5RPBfPZwP6cCuyFkLfFinPvn2HXXyz5W0DYT4i1rmsGJCDrrOq/Z/9WfU
         OsQAAdexhDvxx2VgnsYQU/P2p2Ll0hV7RnOTEWF2cAKmnpfy1Wk/f9Ok5ntJ21o8eW1R
         HCqUkYozbWrereD0+KDwvYpSfhqcDute9jjgD6m0CEFd5BxdNfUjpNzjuLZBF0NpKUPo
         z8EHStKXL7BUi8NyZCNTj+cFxwONFBuKukmUMmSZWR7+lNI2tni+vz8noeB2OHInQegi
         jOilUaBDEBz/3cKqVZQfpTWwzluOA6jH4NaVMvIeb/SjRIq9NZvsvC9iiD6OyE3wm5Uf
         tx0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=akHlwP6xMqm0O2esOdoQSS4/Byxszw282pFTOYu5KCU=;
        b=AyeoQFFSCF/wzPjj7QeeV7Wj4rZ7qO06IbCvxcHPhvS5Ug1Ru0nyThZ4BAqH5rjJ34
         6NDtFcGbp0+APVNhejgwR9kJgxizk/Sw7sgyAF+Bh9t5AxaICBJYgN7g9HiQahngH51K
         DTjwyNPGcAFv1GQ+UwKXZqM+elRKJWGiPfwKbsuZj1yHP8vbNJPLwW3W5zvi0Kva8tkf
         LleisRneRkhzKGJoYHjX1XL/CuVpoYs5J49hnDQvx02l8LZK9guenUlrD/5j3dY/C084
         J/szhe8FyZzJEa0qSuXx/33HRhx4mtOwrZdkQn1o7/bgWUbpYM7hTN7+IHhceUfG72mi
         pNeg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5322InguY8lH2DiA4JVwYTeAiaE1qwz/iEOceAW1bgmVPgFy5OaF
	GNJ4bOaB7Q4hf3422+VnL94=
X-Google-Smtp-Source: ABdhPJwI2Q+vs2K4ol6Tfs2Oa6QC/CIYPQ2J9muXsNnOwJ3ugHia8JAI0oHgOaicmEPw0VXdKTlGhA==
X-Received: by 2002:a05:651c:28c:: with SMTP id b12mr14078944ljo.293.1600527920210;
        Sat, 19 Sep 2020 08:05:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls1853590lff.0.gmail; Sat, 19
 Sep 2020 08:05:19 -0700 (PDT)
X-Received: by 2002:a19:3f91:: with SMTP id m139mr13922622lfa.439.1600527919032;
        Sat, 19 Sep 2020 08:05:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600527919; cv=none;
        d=google.com; s=arc-20160816;
        b=GMtzbLYr1JDu6yxqNRXTqawxksXq5cQT0T0cS10zBUlQRSou/rJtNCm+7UGfcF9HcD
         RInMLVL8j46RnbUOAMh1I3U891sMTtVydiC4iCsocxjTKvkmebKbHpKeY9moXhZRjE2i
         VsDRKKbss2fnTFJ2CoGxfTRbeLXVrOzxrKjiTDMFzl0o2mQXkuPZDUbrlbbDMrYfygqT
         5d0xYCDcKPEyJVUNSwvWI1yOu1TSeA4eGC5L8FF5EjDEGPkvuxCa+QUjJvi7vVcSOrQg
         QW3Rw4fpXB5VFAezLoGgqKt3LOOKu2IAK3gC8Vq/hxWsXEdjmDMI8Y/30X27iTIszyDS
         SMoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=1EJUAaZm8d4ynNfey3O8d6mZjn3ZPHfsPlyUGiDRBnU=;
        b=E7p+1cXbDG8KEFsgYCgd+qNKQ2kAG5QVxywkXb9CtHcyy5PDczsFyFBgljk5pEJH9s
         ETPoxUeE8woVzOvQhogJVgwtobDRPgPzZpofOx9u4Mh4arRqdP+KWvQ8n1fRZ/5SUPc5
         yqs0jzqS1LvEqxJg5jVR+BqTYrSvrMlgE8VcO9FHXvbuNbcJ6LtDNO4Pysni8/L3tyGJ
         wS012xwItXwgg7sBP5tSFwWwbLLazmTmErqW4eTcpmV04IIRUZ1TUTfySe3fvou/5nIL
         v9XdPA2yyEzBl4f4HfwhyP98KRX0BlFQ2pWz6xBxpmlgFXATFMdJmrkj++RaQ0QREI9e
         2F8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id y17si201911lfg.2.2020.09.19.08.05.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Sep 2020 08:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 0E0EFAD20;
	Sat, 19 Sep 2020 15:05:53 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 80B1650D8B5; Sat, 19 Sep 2020 08:05:16 -0700 (PDT)
From: <lduncan@suse.com>
To: linux-scsi@vger.kernel.org
Cc: open-iscsi@googlegroups.com,
	Lee Duncan <lduncan@suse.com>
Subject: [RESEND] [PATCH] scsi: libiscsi: fix NOP race condition
Date: Sat, 19 Sep 2020 08:05:09 -0700
Message-Id: <20200919150509.1284-1-lduncan@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=lduncan@suse.de;       dmarc=fail (p=NONE sp=NONE
 dis=NONE) header.from=suse.com
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

iSCSI NOPs are sometimes "lost", mistakenly sent to the
user-land iscsid daemon instead of handled in the kernel,
as they should be, resulting in a message from the daemon like:

> iscsid: Got nop in, but kernel supports nop handling.

This can occur because of the new forward- and back-locks,
and the fact that an iSCSI NOP response can occur before
processing of the NOP send is complete. This can result
in "conn->ping_task" being NULL in iscsi_nop_out_rsp(),
when the pointer is actually in the process of being set.

To work around this, we add a new state to the "ping_task"
pointer. In addition to NULL (not assigned) and a pointer
(assigned), we add the state "being set", which is signaled
with an INVALID pointer (using "-1").

Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/libiscsi.c | 11 ++++++++++-
 include/scsi/libiscsi.h |  3 +++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 1e9c3171fa9f..5eb064787ee2 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 						   task->conn->session->age);
 	}
 
+	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
+		WRITE_ONCE(conn->ping_task, task);
+
 	if (!ihost->workq) {
 		if (iscsi_prep_mgmt_task(conn, task))
 			goto free_task;
@@ -941,6 +944,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
         struct iscsi_nopout hdr;
 	struct iscsi_task *task;
 
+	if (!rhdr) {
+		if (READ_ONCE(conn->ping_task))
+			return -EINVAL;
+		WRITE_ONCE(conn->ping_task, INVALID_SCSI_TASK);
+	}
 	if (!rhdr && conn->ping_task)
 		return -EINVAL;
 
@@ -957,11 +965,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
 
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
 
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index c25fb86ffae9..b3bbd10eb3f0 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -132,6 +132,9 @@ struct iscsi_task {
 	void			*dd_data;	/* driver/transport data */
 };
 
+/* invalid scsi_task pointer */
+#define	INVALID_SCSI_TASK	(struct iscsi_task *)-1l
+
 static inline int iscsi_task_has_unsol_data(struct iscsi_task *task)
 {
 	return task->unsol_r2t.data_length > task->unsol_r2t.sent;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200919150509.1284-1-lduncan%40suse.com.
