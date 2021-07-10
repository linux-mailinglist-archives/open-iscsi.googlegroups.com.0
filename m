Return-Path: <open-iscsi+bncBDTZTRGMXIFBBD4KUSDQMGQEH6BOYCY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE1B3C2DC4
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:25:20 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id b185-20020acab2c20000b02901f6dd5f89fbsf7961610oif.10
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:25:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625883919; cv=pass;
        d=google.com; s=arc-20160816;
        b=py5Nm6mHqlzvMu/omlNNHFBb5Yo4945HXOuEiwwHtJHISRtbG5GGA0gja/JvdTG3ER
         lil+PRLb4jBIrsTsP2ArPc+BDAH6gg0hdU39DfSCFVVifJW7DzlScKFlKpDn4vz0t7H8
         Ei/XAbRCca96wUH2yNlTdhoVcpq4ePannAIsS48+rYbCtegrKcjuSbIxEjwAa6aWHCIi
         +AfEHphxV8poEqbODR6gaLA+lCtcXE32cUGsVh8kdtHncLSTH1rMoyPkREAAffRXN344
         6CRAhEDhbhRHplz2zJvqpc3Bzhu4NCg8mlYn3c6oDV9zZN5gD8ZsTbhxhsSv6cGRvFu4
         Ldhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=sQz/KmlHj1qv4TcCsBSLs/PyclEsjbt6VHINcupwqII=;
        b=p8Zy7zUr3GlVNi95iDbTiZaKxhGYyJ10Sqq8KKRWl4HI+mNEl42yPsN4LohbDqez82
         sBugEXvXMmaHUJcSv//ZOJ60uztZaWQPBpR4mwOUivIlYIdpCN5fXuKY0hcWmVyIXvqf
         bL5/rAy1XlEsCfKE2UcnV7fEcw7jVINZbKqFXzSad1kx+wHfuO6sz9O4+t10ainmcgTU
         NizltzoVd0hDfl4mRFVzL7LdpFCS9Yt9OnvGiv3dc1mJ/34RHMRvdey5Nal6nsbNHix0
         7tYt4iFd8B1LGIb7qm17gAK+x+NB9tDh0gygLbYx+Gmxau4DYEgDf7RDvk427z408TxT
         +HDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=F5M1LHgG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sQz/KmlHj1qv4TcCsBSLs/PyclEsjbt6VHINcupwqII=;
        b=a66jrNxnkWrVGrDkMO2xvY664rUTRoBX6ClNFNHUz7H5aKOHEenyx6i9aTDWTQpO2H
         1RNxfIxEeTG1OzBitgxkO85zDUo6aKNg0aI0pAxmf0pVN0g7nrNfdsM6IH6Bt2pseCoE
         dRObGwwCj4fj8brR6DjAbRg8wdyxwMInt/IYZ5LOOmM6WQpHSlZ/6ZVwg1lEd9Uk+X6h
         44fX8RUs4rD9XaPQt064e1T1KMI2u1QNhQ81uv0xS0Gc8Gt/pPTURHy+0osDx70GGl47
         EyS2PcdCVkK2b8uat1TZ0QktYrbE+KgNgyV3/DqpGMiAVKEoVfmNpnhpnrFfbjVbkGE+
         yK8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sQz/KmlHj1qv4TcCsBSLs/PyclEsjbt6VHINcupwqII=;
        b=hcr05iuoSXesmmZFo5BHnvgi/C0fjRUk4sGv1XSl0Nzr0TWB8vcGKf5C+csHvIVR3E
         0NKPNnCrk0KFJ/uLu7tB19IsxTgFKUpENbOLVZTyHlgKSIo9BMqMvoBYdddg8qbCyt+Y
         jz196ZXUwZj1hgA0smpOhd3V5HZF0LxDQ0b9OlnXZUQrVgRzhq/dVuHcPw18Zl8mPLkB
         1WKtoHMoDwwp1VaBU4M32fHghu9rA7YSOwJGbiqbaKFPsMdV4IqCJX1OKrq21FdKZBht
         5lm7tgDlM2NaWJxze32vqOIO02sWGqC6RoTFds4Zrlt4g0OfbIW/C/44HoSmAfIf8/fn
         5OTg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530j+mz2i8vrRt+G3PEMCKUhyYLPgiWcnUSb1TIqqTcgQ3LQ4xOu
	q4GEsQ0MV0QMFhryfKzsFvE=
X-Google-Smtp-Source: ABdhPJyUGc6lKD1nK8Yf2C2Uvh54E45N9Uji7yHC/zsq5h/eOsmJJrnLHUvxv1Qeb387eKepxxZtpQ==
X-Received: by 2002:aca:4a97:: with SMTP id x145mr1486579oia.118.1625883919250;
        Fri, 09 Jul 2021 19:25:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:498a:: with SMTP id z132ls634715ooa.1.gmail; Fri, 09 Jul
 2021 19:25:18 -0700 (PDT)
X-Received: by 2002:a4a:5b41:: with SMTP id g62mr29357573oob.74.1625883918759;
        Fri, 09 Jul 2021 19:25:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625883918; cv=none;
        d=google.com; s=arc-20160816;
        b=F+tehf9lcmKchYnLNLcDWvctXtjleqqJu5UYE1NZY4NdQL79Z41QBvt00Uj1T+Rnr7
         rVzUZ8a30mrVuHNZVOHNvacJ5djtiAgplHFsecn67HUz6gaahdNga/tCrBaTd67k1tnJ
         7+31ktr1j7S3hHHw9CEHj1W5TXf/OjkefM99xAnIuqa1DImM9fFpvsmGqq0dDwezhK9s
         kBttH7nAdoPs/cpAmNO0Hey38H69kRPhdHITv6fXlfdT6UnGoLjeS7WYtTL2f1qEDDaT
         k4vWSpD1uwecqmDrkSN3LxoLGnjljWhhfUg8+NnXI1/Ljwf3poRaPTznP327EKY3FSNE
         ttKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GWkGAJWMZk21zfl+FOhjoJyqghD6dFe8V19MMhgpmSs=;
        b=kQV3AITLcVvznZLpN+YmYAwK9u7UidUybUuVVk0zCn1gI/jryCMKn4rNPMaENwK5k9
         iONx7nXxaiQh3nf8Zi/YUY643aX/RMJzi1m45kfVi5GBnGMrCRBvqSEu5zcwTF3QJmDA
         DS/otv6OT9nyylrmFcIMVjesZ2+AYgDYlss2XqbsJaIbpeNbs4yWV9RehbHhDSVaBW7s
         MHEfE+SWJhTRNuoriDHi0ugC1CjzriP7ORSXvh7EUMj3UuERMUHu+ikxO0Jc8ItKZJiE
         ieX8QU3erRGOLOeij7y+TfQHFXZr1m6vxyCahJWeF/7HMxoeBGN7mK+chcdCkoR+RaKV
         VAQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=F5M1LHgG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a20si677225oiw.2.2021.07.09.19.25.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:25:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 18BBA613E6;
	Sat, 10 Jul 2021 02:25:17 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 37/93] scsi: iscsi: Add iscsi_cls_conn refcount helpers
Date: Fri,  9 Jul 2021 22:23:31 -0400
Message-Id: <20210710022428.3169839-37-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022428.3169839-1-sashal@kernel.org>
References: <20210710022428.3169839-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=F5M1LHgG;       spf=pass
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
index 41b8192d207d..67ac0a46889c 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1348,7 +1348,6 @@ void iscsi_session_failure(struct iscsi_session *session,
 			   enum iscsi_err err)
 {
 	struct iscsi_conn *conn;
-	struct device *dev;
 
 	spin_lock_bh(&session->frwd_lock);
 	conn = session->leadconn;
@@ -1357,10 +1356,8 @@ void iscsi_session_failure(struct iscsi_session *session,
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
@@ -1370,7 +1367,7 @@ void iscsi_session_failure(struct iscsi_session *session,
 		iscsi_conn_error_event(conn->cls_conn, err);
 	else
 		iscsi_conn_failure(conn, err);
-	put_device(dev);
+	iscsi_put_conn(conn->cls_conn);
 }
 EXPORT_SYMBOL_GPL(iscsi_session_failure);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index c53c3f9fa526..a7db7c06f21c 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2351,6 +2351,18 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
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
index 8a26a2ffa952..600f12105791 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -433,6 +433,8 @@ extern void iscsi_remove_session(struct iscsi_cls_session *session);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710022428.3169839-37-sashal%40kernel.org.
