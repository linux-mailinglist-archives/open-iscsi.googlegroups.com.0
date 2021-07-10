Return-Path: <open-iscsi+bncBDTZTRGMXIFBB6UIUSDQMGQERXAKDCY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFD53C2D8E
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:22:52 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id a5-20020a056e020e05b02901ef113bb0fcsf7160650ilk.16
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:22:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625883770; cv=pass;
        d=google.com; s=arc-20160816;
        b=zfbomIEv51KsDW2Y1I4BQ26yVNzlfgOLn/9LnF2DdsvuaoieWFmm7ktrVOxPDq/RAf
         KC/3QBDq7Klzi+VS54PhxNbqDFUziklylLo9EGDIZ1xtZA11xLAcKXhhyvAK+ts3Xbpj
         xWQbMQbcOpCncsHDe5FmWwIKuq4UhTBHoDpNyH4gwzhFuSOGW8OQ6OaefEXQ0fGd5tlO
         l2UKHiKGMawjh6d1Yar8NqmHL6RaB7vWxmUzN/8iQ3PlSUnT04O6IdztU2znysaRiuku
         EBNnb9oh8D6pyGyb87tmJJtJPUmUm7MITGyiDFOL8tTTAoYATQohXxUHRk7zktKxemId
         iLMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=l48Npg2D4DuNoA3qU8CehWEL2qo75880Gnq+8hf1E7k=;
        b=FDIXH6tdeCNNq9076NkaitEtipZ7lTD2OLGy/WWA8CBXuxSZmJawfXfxr0Vs9nXxIK
         h7fFL0FMH7fj+5xSqcByss4+/vwJH0MavZ/P23yzXutThqgUjG2GUP7JgywbGPEuh+U1
         zecEPmQZcIEU+yaoPcNZdk5M+IqSI53rltbECn3P/WbmV97fmMyX1A0V+W78K5Ifizpr
         8gjuguO7l2tSeTxYm6fInYlq1Cyt5QUNKMAEwUz2rxdB1HKJ4FW0ozrSsyN7Z/c9Y8Ao
         Unvvy6/8D313JqYnoYC91auJO2tza0Crad8v9cv0yi7cUejpPmBDbnmaiC0Q9UDt6nTx
         IjKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sfe+3D+3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l48Npg2D4DuNoA3qU8CehWEL2qo75880Gnq+8hf1E7k=;
        b=EEnnDJ4NLsMqp8cI5rVr+rvNEAIdVLzXK1Uas8TziycqF2C9LoYiHuCkQZM1lCf1RH
         wfAyG20T1qjaDd0IQawnR0hf7DPniDtmizm9aGrQk1N5AJnxHiQoXArbfhXx2+/8Mvz+
         NPl3AozVycqqBGhRvpSQESJeTq0+Eouti6VGMo0R0E5Ebc2fH35Xp6l4PGp8jS7p1SM/
         gCzI7DdKB7utkGs+Xeku8pGS7T0r4YuI9YIBp6mAmml3awPkfZrNbEftb/GTQlMDOrje
         wMePuhLqj34QmxFfSdo2Efq+gPqUIYDGEENWEvm3Xd3xq2u2EqZEBHt3MYkCPx2IP24l
         A0eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l48Npg2D4DuNoA3qU8CehWEL2qo75880Gnq+8hf1E7k=;
        b=rgMSGpomE1TsPohMVPMsfx4K4yKhvmYzETqBPGDHaE4VY6H05OVliAOzbScTiPnI5+
         vhldqCj52lZWtgaU0ri5ZhrMTf7DHud1icH/3nUnR4zUiJImwdC5II5g7CCg14XOnlUM
         /szCy6A348q4K/PMfd46ouHk3v1lTW3Np/IBa1h50gl4tMuhoD/RUmtgjvg1RGz3lESC
         vDceU9jn6X2Bt3yF2g7ZpTsLEuCNymsE9cyNx2tZBzeIKr6oSu/xwzyKIOSmCgsKKzvk
         q2xi55DIQqdgp4F3fTMaf4nxe74ILkB9nWxR3J/EjAicwQw4hezSmVNspZoGlzh8cSOS
         iGBA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533HcyGOEsxoz7v2xpkcHYMio0Ar+7Sr/BFQ3iYUrNb2ogP3+Rty
	Lm1xAkESGVhoT/GKRy4LYPU=
X-Google-Smtp-Source: ABdhPJw6MYLhtV+964ky1U0uI4yY5wNX6gVeJYGaS7fF2UZvAT3QlgGbfUYLBCLgK6637EObfsjG5A==
X-Received: by 2002:a05:6638:2390:: with SMTP id q16mr26623011jat.59.1625883770669;
        Fri, 09 Jul 2021 19:22:50 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6602:14cf:: with SMTP id b15ls444799iow.10.gmail; Fri,
 09 Jul 2021 19:22:50 -0700 (PDT)
X-Received: by 2002:a05:6602:17ce:: with SMTP id z14mr10168316iox.73.1625883770188;
        Fri, 09 Jul 2021 19:22:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625883770; cv=none;
        d=google.com; s=arc-20160816;
        b=jGV05g48k0RabrYQIQWSW/LWURJt1gxV6PfY10xH+h9INGd51670iRqteh6PicP0YT
         rjzgCKZlWzOeessAF+bJOI9+x0c8i9TmmEytH6hLmMoDxhZtW7Q1ppFs6L7gY9qeM0El
         lYmxloN/SJna+B/s5D7t/yNXEI72cIaGJW9gijT+8HIqylB13+IQUHVo9ljTpMx/bbge
         qFqUAskC7pVrDXU1VtiKJ8w22BEolcdPTNHZGLF/3dLAaHbc33h7d82oewzzmI9IQE30
         QLPQkkR2Iq4kmocgzVk0vZoCFk73q0oRWZPgW4QV83gL7uzfJ8fkx4bU/boqW6sb2OOO
         s8Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ws8KYbcMTBSfivkdzQG2IkMWH/fogo+SJiu8UQSGb3I=;
        b=0/rInSFd+wNoobQaD4wy/YU6/Btz3dki94zP0rNOkAjjPDj+05pGCSU33Dt5PXpMva
         /DHVxY1sKdxB02UpHc2HWJq2x78LgHXQatNido13WK6MCbe53cCU8G6pt1EjgBhf15+/
         Ge8qf75vMCvCkF+jkbzipvqc2c6JlYguWqteSdoxM6EWMTD5EQHZmk6sycyyN5cVprZ2
         mzV1sadwjAwx76rkLHyMZ8DjEZ/9giIY+azBwC+irjOJXmsT7GpdWhTO8R4jseKMQia0
         +Xg+5QAoNH+9Gfn3rZg0ogqJ/+2LfmooeSOBmJs5L6Ha69IqKTAsqLiQGOiUYIqi6koG
         cYlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sfe+3D+3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x4si986182iof.3.2021.07.09.19.22.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:22:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A79560BD3;
	Sat, 10 Jul 2021 02:22:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.12 040/104] scsi: iscsi: Add iscsi_cls_conn refcount helpers
Date: Fri,  9 Jul 2021 22:20:52 -0400
Message-Id: <20210710022156.3168825-40-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022156.3168825-1-sashal@kernel.org>
References: <20210710022156.3168825-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sfe+3D+3;       spf=pass
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

[ Upstream commit b1d19e8c92cfb0ded180ef3376c20e130414e067 ]

There are a couple places where we could free the iscsi_cls_conn while it's
still in use. This adds some helpers to get/put a refcount on the struct
and converts an exiting user. Subsequent commits will then use the helpers
to fix 2 bugs in the eh code.

Link: https://lore.kernel.org/r/20210525181821.7617-11-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c             |  7 ++-----
 drivers/scsi/scsi_transport_iscsi.c | 12 ++++++++++++
 include/scsi/scsi_transport_iscsi.h |  2 ++
 3 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 2aaf83678654..ab39d7f65bbb 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1361,7 +1361,6 @@ void iscsi_session_failure(struct iscsi_session *session,
 			   enum iscsi_err err)
 {
 	struct iscsi_conn *conn;
-	struct device *dev;
 
 	spin_lock_bh(&session->frwd_lock);
 	conn = session->leadconn;
@@ -1370,10 +1369,8 @@ void iscsi_session_failure(struct iscsi_session *session,
 		return;
 	}
 
-	dev = get_device(&conn->cls_conn->dev);
+	iscsi_get_conn(conn->cls_conn);
 	spin_unlock_bh(&session->frwd_lock);
-	if (!dev)
-	        return;
 	/*
 	 * if the host is being removed bypass the connection
 	 * recovery initialization because we are going to kill
@@ -1383,7 +1380,7 @@ void iscsi_session_failure(struct iscsi_session *session,
 		iscsi_conn_error_event(conn->cls_conn, err);
 	else
 		iscsi_conn_failure(conn, err);
-	put_device(dev);
+	iscsi_put_conn(conn->cls_conn);
 }
 EXPORT_SYMBOL_GPL(iscsi_session_failure);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 82491343e94a..869cfc329da9 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2348,6 +2348,18 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
 }
 EXPORT_SYMBOL_GPL(iscsi_destroy_conn);
 
+void iscsi_put_conn(struct iscsi_cls_conn *conn)
+{
+	put_device(&conn->dev);
+}
+EXPORT_SYMBOL_GPL(iscsi_put_conn);
+
+void iscsi_get_conn(struct iscsi_cls_conn *conn)
+{
+	get_device(&conn->dev);
+}
+EXPORT_SYMBOL_GPL(iscsi_get_conn);
+
 /*
  * iscsi interface functions
  */
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 8874016b3c9a..eb6ed499324d 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -435,6 +435,8 @@ extern void iscsi_remove_session(struct iscsi_cls_session *session);
 extern void iscsi_free_session(struct iscsi_cls_session *session);
 extern struct iscsi_cls_conn *iscsi_create_conn(struct iscsi_cls_session *sess,
 						int dd_size, uint32_t cid);
+extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
+extern void iscsi_get_conn(struct iscsi_cls_conn *conn);
 extern int iscsi_destroy_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_unblock_session(struct iscsi_cls_session *session);
 extern void iscsi_block_session(struct iscsi_cls_session *session);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710022156.3168825-40-sashal%40kernel.org.
