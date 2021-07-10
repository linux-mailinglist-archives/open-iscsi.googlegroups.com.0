Return-Path: <open-iscsi+bncBDTZTRGMXIFBBNMNUSDQMGQEAE7N7NQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA9B3C2FC5
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:32:22 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id t144-20020a3746960000b02903ad9c5e94basf7845413qka.16
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:32:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625884342; cv=pass;
        d=google.com; s=arc-20160816;
        b=SklNCKPI0J++G1acm2hdrwxCFffVu8JHqQmNJc89gwtlMzSpUvnp12b7Rp6n7D8SAs
         yJc/ZaMa9UirhM4KlHQhnbqXhduiWP+wfZqx2PjiWp5aiQYw9llj2URvPsUqy2AShdFu
         mGBrvLZm5maHLc+0if0Gf61Ujk8pxgbZtORHUtoU4kTKReDy9EZnLvi9KB/l2yuF92xx
         ZzVhNnUQP50shqdiMLty9Yb1L0TYaMlmCon/34QNvzH+Ov6GMPoucjfopL8NiFkR7yLx
         t+HbYoBdowCMSdCn9zVPLyLO4U2EM5km8B6zaYWS1AXzXlroP7/c9bGarnYNfNj/YZCc
         GrOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=+QfnCStbircFIAS1m9KEyJwSG19fJRl9H+5jtJmrw24=;
        b=OBh4N+DCBVNwCbaDikgq0cQk+O/2y5vQm0m3IDhQNRzNaW6ESyBfMQsBDXyDf3qcxK
         aY0H2mn04IldWfO1vIMUbYmf9v3TSGnLmIGVY6ZANuSXjrJKUbsxlvgSdUfMneR4tKAM
         6bgMBpCZphFB7yAsErsW4N1aOQUwIPbD77MGoekWl0GgYGw/681oU6ZXvhtMIMVRFuxQ
         CUu+G8fUSo7h1BWEyQeb2ZApWOqFbqMumQZDd4sYFwK4mlz5AiyEGxQXNJdsF8arp+kG
         APNUrmBMOk+iSibSshL1XyiOugiU9ryoEc9WmGhjWRmnK42EfHt4/zANpT/Gb+FHOh10
         DY6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fMp18Kx1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+QfnCStbircFIAS1m9KEyJwSG19fJRl9H+5jtJmrw24=;
        b=hsXydxYGU0byy+dXFKsDe+37yGykn742EvyDYFvsOoLEZJYg7DfrYaaO+G+9I7/OVS
         RTB22A72BDfzcxv+A7m9CSLqqcHEk5b/L4YIE76BvHk2S06fGtuux/gtsN4MQp/UGHSR
         NIRTsgXBN4zjKr6eJhMIbgiwFiNzalYrSE6P6WOuSMfLRiL4l0pASwo2VLwfHv62IqtD
         P7zN3g7rsaJupFqy1SuDq1F6Yc/aispyrb0jLuOUpGLXtbuI+a54ifZ+EzKQXYOJzm41
         ytuedEeodxfB/e3PfJBCadUMKq787UicUW8SrA6HnCozH1INhPPRwF8UqAk15u3RPFhY
         evtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+QfnCStbircFIAS1m9KEyJwSG19fJRl9H+5jtJmrw24=;
        b=MLZlLcnk/xIy8Qqcve428QYDt23EP8awFMfnHdrXS49aRlHPS/lixPu3hqNiI/1wSZ
         4e3uVlJGFiveCRlyqtPa+UX5JwC21deqSHhUuMFOK/LavXtfImScQILWoeGPNQpDZPCC
         98jtpDiB4NgmOZ+kSu1Bp2drxhwpqzjzwFDIbW+VMNYd2lcyx6RxCkngBJPGCTA4UBbc
         N4ieD/cpIdhRj91UH7Y26no7t2AZI3vq9JlZO+yNCgjGUKFXbK9Mjfcd0eFayIF0hOiD
         aIl/xENV2gS+pUelke6At7yRNFuT5lQ4XxR6eNHv9fHF6MMi84bOmq7sJM1iJARK765N
         1+pg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5303WaTM3iaVubMH2enZXpNBIe+GRafoeQvEIgEv+r5d8svoMi3Y
	abhhViKwYPC5vRHdbghVuvY=
X-Google-Smtp-Source: ABdhPJxzjzkiz5mzOp+6nZj4hEiIf7IRoSzhrmYPRodvVm8B4kvDM23F2PAKBc/w+s+IJFSHNu4XDA==
X-Received: by 2002:ac8:5e8e:: with SMTP id r14mr14651630qtx.128.1625884342104;
        Fri, 09 Jul 2021 19:32:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:ea15:: with SMTP id f21ls4903165qkg.7.gmail; Fri, 09 Jul
 2021 19:32:21 -0700 (PDT)
X-Received: by 2002:a37:7485:: with SMTP id p127mr41396341qkc.323.1625884341687;
        Fri, 09 Jul 2021 19:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625884341; cv=none;
        d=google.com; s=arc-20160816;
        b=o9Q15IIBxKRTSDxfoPtU9cu9jU3EhMiC9dL61nK54DdY/fdjvYfd3hCQBgI8j4pQ8o
         KPrJc/vCM4ieuSjkLdgSurQln1uOAuAULsoSQF+1gwpdWPqeCMmtaKn8ktIO8PD+V7Rt
         JLK/XlYROEcMGSNGZp+8vSU3ZV1MK2nb8CdQZ8HZ/9izLJtQwMo/XyitentKMWjLAPE8
         pnlp4YYO9/EI5kxgZ583oPnZ1bN7okFEzn8MIGQIQozAYqSdqOfSG64RbJfsP8VenCKs
         SHKXi+LH7AS25UHbEEyNO0ij7Fw1HDlWBI1yjHmyFJ4raDd+PnpEdVHfSe4UJ7Otsz2S
         ns+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wrkI2NRF63AIAR/lN8oC8TbocX9umlVrvf0LHm9CgDE=;
        b=uoAQrKKJY7v7Wo1vwxmZ2+OxFPoJeHqB/wDyJQhvhoIY5BY0ko1jy6gfM3ViUFKel/
         XfsxhxOfkwyLnwqHQz5KIV4EyLDFSX9KdC+QEUvncqSPDmprJQ9u2quxXtzd0Hh+wUWt
         sprNrLHaohS596hcB6Hf+M3fQkUsHnSDJSQs/8vnMqk0PFVIxLl0Ft/dBjlD8C+OxURt
         gfzKrT/O8boNFW1HaJpGVlvqDhj0XXodp3tAX5WTjzyeHKEiMBeEmW4KjduONwX2tUOa
         y6OfMfeAxb9jnFqykZIXFuNVBgHYs+oIsilB2m0PWYIT3KNYHd4XC2QU4OULZ+95wOUh
         Q4yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fMp18Kx1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s19si599910qtk.0.2021.07.09.19.32.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D766A613EB;
	Sat, 10 Jul 2021 02:32:19 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 13/39] scsi: iscsi: Add iscsi_cls_conn refcount helpers
Date: Fri,  9 Jul 2021 22:31:38 -0400
Message-Id: <20210710023204.3171428-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710023204.3171428-1-sashal@kernel.org>
References: <20210710023204.3171428-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fMp18Kx1;       spf=pass
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
index 81471c304991..52521b68f0a7 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1385,7 +1385,6 @@ void iscsi_session_failure(struct iscsi_session *session,
 			   enum iscsi_err err)
 {
 	struct iscsi_conn *conn;
-	struct device *dev;
 
 	spin_lock_bh(&session->frwd_lock);
 	conn = session->leadconn;
@@ -1394,10 +1393,8 @@ void iscsi_session_failure(struct iscsi_session *session,
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
@@ -1407,7 +1404,7 @@ void iscsi_session_failure(struct iscsi_session *session,
 		iscsi_conn_error_event(conn->cls_conn, err);
 	else
 		iscsi_conn_failure(conn, err);
-	put_device(dev);
+	iscsi_put_conn(conn->cls_conn);
 }
 EXPORT_SYMBOL_GPL(iscsi_session_failure);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index e340b05278b6..2aaa5a2bd613 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2306,6 +2306,18 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
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
index b266d2a3bcb1..484e9787d817 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -436,6 +436,8 @@ extern void iscsi_remove_session(struct iscsi_cls_session *session);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710023204.3171428-13-sashal%40kernel.org.
