Return-Path: <open-iscsi+bncBDTZTRGMXIFBBWUQUSDQMGQECF7UW7A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id DB83E3C2FF4
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:39:23 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id 1-20020a6317410000b0290228062f22a0sf8650361pgx.22
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:39:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625884762; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bj6YgjRY1ZoPx3iXHZ8HBBlH6EkukojJB2pvxED8ak6RAWgR91gy60K2/smL+YKzsY
         TwrUTSPyzAHX3iNLy8fBTABdzRqyJsXw8lAI1cuBhTWZ6DmDyKxzxvN9Dh0lwUAZf1FT
         M1tplI6ZMrJu6n1MIQGF7xae1on0dSQb1m5P57dQ8pe+torZuwX7qMOfRXjRKPRZTHML
         +H3KO7fNFR2emoX+9N3Uk6j6FW+C3+CViAq57hM5Up106Axp6uubvX9kI+4gZvbPRVMe
         ixvkVJ9oRQCUGolBu80rVZx6rzalUqJkeZvija+njg4ijYRLoU7Kj2wlLDzxQAaAQKZr
         4OPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=qohA1RR8TyhWH/mtVuO6da/j4azWWk+WETk6dkXU90k=;
        b=KYYuxwmqDkub6XoydWg1VibsDhbDswVFZOZj9Wvr21g+EH3zGBARb5v+jp9Wl0QzFT
         BPrb37uD33XRjW1M4qm2aFMmiZWJUmvMUJb/oB6KJ7e+zi4wuvDuZ4Wv7Wmtq1L+gAZf
         IT3IVxzWkVTldMNZXvmOvyV25EgDfQ2HT+uHLjjdg0OCvECTH6nzI0jvjBWMBB7u3n0N
         ALi1CmVYO2x0tW+8jeVuEK4D6kEnQlDmbGF0XfvFXS3PWHuAMFdRjE/oNPkjH1aQeT/Z
         zlmVboBqb0VU7RvB+thcQq/rz4k5Xrn5Zkrsok2Fk5yCagN0Eh0v4E9Z28JAYKfWD0aC
         +Xpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=miesT1rH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qohA1RR8TyhWH/mtVuO6da/j4azWWk+WETk6dkXU90k=;
        b=AoVNNFOmyLcSyu9Kl/QWJ2XDt09bRbUbs2AwVexBN8uCDPngrjgcvDI5YALMDJ+eP/
         +D0QgqdqBd8F8yupx42EeIQgUphAvRVoCj1a4j2KeFB/lPl3ZvtUX6aOD0glHIaUy7AT
         LGlCyYy7wHTfIur7bUgnIL0gsbDClzGEbOACNHl862iNyNT1cIFy7f9hmIVjJuoDibma
         h4HN6gWUvCjUdopf7mgE+mAE0hWQTCTRJxJeNd7i4dUESdpER99dRdgj769p1RMF+EAD
         rpN0pTGlwLqmohMZPXuOwbFp6QUmUeAB+42rQTjXc7fl/U9SmKZlAlYxhrBVIMJMIR3v
         zt5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qohA1RR8TyhWH/mtVuO6da/j4azWWk+WETk6dkXU90k=;
        b=tJO7CYhd3E4aZfbfUYB56tHqEVzcqhnmbtYN7pbDX94Yi18MaAimHqGdGCAsE4mJds
         gNBHh4t6YZIOa+nXAdakxWhrFJUTrSVt+mLLg0dYBqAHyrphmoMXK4dOx6JicJBxddtq
         NTTZMOev4PVVhR1wT3T9z0tzxIbt+R9r/cnUDnP8Ukvda+ief0oiWZatiBUuidpXTWzM
         qM/HT5+LuZcFC+OZmstr4tYY5TP8CSFhS2WY/D7Md5XELli9+DT9MSjUYnPaEBOWlIss
         k4T6nVOOPgfwTM5GvVLPIFoV9S53WNBoWJYNYQHcz3KxQUjamQKeXB6c0fah53sidwWO
         U//A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532FyhY+pG6ulDY7DJbt+d9gbdaVM+MKzaWL9ZGboXFwweIrqVZI
	ZIfDtACdgTnBPszqPr5MYps=
X-Google-Smtp-Source: ABdhPJwZfi9n0+gB6rEoTcnXdwD2yb052mGJy7L2fW02o+FIA76cIwCeLfNrc/rrk3JVUbNm+hMGnw==
X-Received: by 2002:a17:902:8203:b029:129:2607:6bf4 with SMTP id x3-20020a1709028203b029012926076bf4mr33049349pln.57.1625884762602;
        Fri, 09 Jul 2021 19:39:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a65:678d:: with SMTP id e13ls1661303pgr.2.gmail; Fri, 09 Jul
 2021 19:39:21 -0700 (PDT)
X-Received: by 2002:a62:880c:0:b029:327:8e12:853a with SMTP id l12-20020a62880c0000b02903278e12853amr13329137pfd.74.1625884761866;
        Fri, 09 Jul 2021 19:39:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625884761; cv=none;
        d=google.com; s=arc-20160816;
        b=oJ7klib+7bcHHOBDu4J4vmg09kGLEcCJ+7f6aXbWamdtxamdj4INwE/lr8mjkJjf1A
         uX5pzO3/Jo1i8p0depq2xRq126/3Fs5d+sh6zCRXTwvPqALqhywmw6au+6lB+M9C4sr7
         MXqzpbnEUP/XUjwmb3LJ17D9hqo8o0URkHi6gnTyTq1fAiYHdqaIKK+Z9oe48N77lccz
         UcRdyiUmDTzNi99q38uteATyFyD0ZnRAwCxES1kk+9pJbcgBh7yWCObqL+a4M8eBDQ7y
         lRMEeLkSRKkM2RnKgcDp1xWT7g0RFVUvuJbGKII5jqCEOCtHX7DoHVOokUlHaSBRpkKY
         sbIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iLB5WchVl17tdiTMhe2qgexNy11e1GAjAnLIYR0OPsw=;
        b=awKGdLh7bHg5meWAk2duiyN7e84L5w6eFAmT7c/YLAK8zyo8QBnFF7Vzz2eIsf4W+u
         obLQh6ZLbSSFvGaAq3lZ/T26KGobAG1Ej6PekESxyeJYTXbjZZPBdmXyhlYfJvDQmJ3M
         jy3fBDy7cBQBsQPisYWLHwSW7d98kmNrhDs3E/iOHDQc54qxW37n8dgw01A2Cdnb0p0F
         wKyfyC2Y83Wo5GQY0f88k8nPJHu1s3byHqjaL+1QBHscC8azU33MThMHKz5UsSV+iLcK
         /s4pFpVcux8KP1AfgD32tGAX4bd0bzxxDx1HwiHzIvv8Ow29miBPgo7D+FXZFjfrCI6r
         KHtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=miesT1rH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si593460plj.1.2021.07.09.19.39.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:39:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B0B50613EC;
	Sat, 10 Jul 2021 02:39:20 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 07/23] scsi: iscsi: Add iscsi_cls_conn refcount helpers
Date: Fri,  9 Jul 2021 22:38:56 -0400
Message-Id: <20210710023912.3172972-7-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710023912.3172972-1-sashal@kernel.org>
References: <20210710023912.3172972-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=miesT1rH;       spf=pass
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
index 18b8d86ef74b..0713d02cf112 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1384,7 +1384,6 @@ void iscsi_session_failure(struct iscsi_session *session,
 			   enum iscsi_err err)
 {
 	struct iscsi_conn *conn;
-	struct device *dev;
 
 	spin_lock_bh(&session->frwd_lock);
 	conn = session->leadconn;
@@ -1393,10 +1392,8 @@ void iscsi_session_failure(struct iscsi_session *session,
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
@@ -1406,7 +1403,7 @@ void iscsi_session_failure(struct iscsi_session *session,
 		iscsi_conn_error_event(conn->cls_conn, err);
 	else
 		iscsi_conn_failure(conn, err);
-	put_device(dev);
+	iscsi_put_conn(conn->cls_conn);
 }
 EXPORT_SYMBOL_GPL(iscsi_session_failure);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 42bc4b71b0ba..e0159e6a1065 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2328,6 +2328,18 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
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
index 6183d20a01fb..e673c7c9c5fb 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -437,6 +437,8 @@ extern void iscsi_free_session(struct iscsi_cls_session *session);
 extern int iscsi_destroy_session(struct iscsi_cls_session *session);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710023912.3172972-7-sashal%40kernel.org.
