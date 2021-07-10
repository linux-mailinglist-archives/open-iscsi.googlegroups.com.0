Return-Path: <open-iscsi+bncBDTZTRGMXIFBBG4LUSDQMGQECNT5YWA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 583853C2E7C
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:27:41 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id f65-20020a6251440000b02902fe9dc6c80asf7579406pfb.2
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:27:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625884060; cv=pass;
        d=google.com; s=arc-20160816;
        b=IoroxRcB8nSrjTVcEgAj+Q1ZOkGp/Q0RUo3l7kTGbBAoR4hrk9WZ24+yaxjewRw7ss
         291kr1k2zHweG2F9Yv06UQZIWHNfuNnwJngQpv6nmf82Lkp/Z6UKZw4mJxOq19G7wU9H
         LbASZg+F+IJ/upLgBaC2jCcRzzFl59ZLhGNjYTwLtPBsLIFUYPVXmXA1yQKbFAOyckhd
         gz0rTfgFda8Nl8kjylIFjgmr+rddCJmC5OsCmIviFsJAOlHLjRZr4L/KTVgDx8fopWqV
         VKdLCEEkfvqvS/TL9eEa53yODI/8R6oyYHmRMxseFxZRhLtDMBTCV1hhhFT6kP/8Mm2A
         j7+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=l9jOOfnVdHnfyk5OjFHiAzYM9GL11xG2yPu7nYGxPfc=;
        b=V2Yvbad/Nwl+SE+AOli4gUdliVZtdNpdiKgjJy1QbA7eB4g4KMoNR2oLey1Ub8JBjj
         YaeQuPXmbVwcxR0S8TwTrgW0tcQBwNCuCIreLBNaKtKGa4YsCeazJx4g8FeA2Xsw5dkz
         IswHm/y8h2X8BuAkhJOMCBdRysnlErGIpLxkHzOJqDu+VAjZ01dGJuYMUgXF5V50YxFv
         0gURg9cbd6L/JdZ6oHO/DR2yN9TYmyKp0EEvrNE2UO6u10qYpK9MZ/tUnI+ERPZupQsk
         0JiDGqjMvphcdHC3cOyraxad4FwtyuF06yOCFTDl0sVGp0/tQflH9N44HDXiNsz2gEKE
         js+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OWg8UzyK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l9jOOfnVdHnfyk5OjFHiAzYM9GL11xG2yPu7nYGxPfc=;
        b=rz3AeMfEz4bepYXJdODh78hujy0RoRIfOl4BBHpB2I/dJpZpxbpfA16u1zzHhkN94H
         U/pDQmtJcSbvMCnbqLpzI59O0UFAdCpgsEzX0yGX0Q6THbuYLU+7XnmQmzP1vKi283Ku
         Eq50AEfJ0W89bqJ9x2YiXfogDRTRzy2CWtgFSgLm5WpLNRgDwq/8LlDLzU5eoyfAM8H+
         nh7ietk6hPYBV+DMUBueELHUQJGN4e9SquMJVRqQhRHs5v813fzW1UhfFfOp9KQGvm+x
         Kf9sP7lgEjUrHPUowiqKjDSq0PqZiii58/b2uRbaV81aRBIruQrxsijtpePprcl3cEsp
         xjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l9jOOfnVdHnfyk5OjFHiAzYM9GL11xG2yPu7nYGxPfc=;
        b=JkzAgoic6t2v7fS6v246lnAs2Y0m4Nzuw2dp/Yo56yx8uIA33WlHMELqopPl6sATfM
         ezdRaF1cm8RWkjzhq43dC9xbRlgvXU1B9ZL5vz99/+X4dH0P6TiShNrCA6a+RJemXkah
         O3S/VYJ9Mt+ZTUOAXFOke+cl3aRrvQX7jeSsIZVVoncJjqri3coOd4tINqSkKORSner1
         LKvGnOe+LtWEZEkQtczkFljxyQswaWdgmqSAlwK3yzj50RCQCQ2a4ecfITERZwxBR+/A
         pd3Not5OEpO1I2sx8jPSqVNjOOpXhc/XuXARCZuHYQAbvvbVsQ76/q3WHkCocb7O4kGN
         NUYw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532JmvR4uFdnv/9CVFPIl4Vv2f+STVs+Z9RMVL/k3//TMcsx9JYM
	vQ+TY0Yk4mC9Q7XLx0sWYh0=
X-Google-Smtp-Source: ABdhPJwDpiZ+focwLhw83k/PIB47kU97pSn9hxdDZnzBeuSZyTaBOIKVpZfZP3yOYw0NlBuZCjja1g==
X-Received: by 2002:aa7:818d:0:b029:303:513c:b2c with SMTP id g13-20020aa7818d0000b0290303513c0b2cmr40519199pfi.61.1625884060073;
        Fri, 09 Jul 2021 19:27:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:4ac9:: with SMTP id mh9ls2353863pjb.0.canary-gmail;
 Fri, 09 Jul 2021 19:27:39 -0700 (PDT)
X-Received: by 2002:a17:90a:1f43:: with SMTP id y3mr18755689pjy.0.1625884059429;
        Fri, 09 Jul 2021 19:27:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625884059; cv=none;
        d=google.com; s=arc-20160816;
        b=SARF8Jg3DC7+peX1AmS/7D/MZDMuMSfNDaATT0tCqr7VEuA+nLowDuvdQ7KHEQBbts
         XSHeoTj9FmIMlKKpdJTVCnM5YB07VFr6LlaYE8YFixiMOaCtKXSfR1KY0vvjee6/+oYg
         xjUKfGI/Bbf+dfdpRuT2VEZHvECPnbu7d/7EGuUZkdh8rFxxdSPex6UG2/mPaTrElwZM
         vH2kjC209pFlll68R4qj+vi+Yl0c5O1pYVscymzJd67Dxxc7mnwKTRlDieoY8a5cY5fS
         kHyYuCPsP8qYe2LgIiqRnsYVFeNMMuk9R1FTMvUKiqpxFVySlpFbM/MWxiT7+WJTBOOS
         ZoFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IhY+eKPp8nq3A+5g7N5EgWZFzS+UIXB76pNxmTZn5pM=;
        b=Qm2BjHNh8fqortP8vuEIfXUEL93urh21dyAGMGwPXWaF7zeez/IBtEQjtyoudCbs7M
         vKt+GZspksx8xcNxm31IoKJTRptbRuY1kYXkYxiVxjNLVj6CMfEEZeRIf6xM6fgmbfIh
         b2pOkF3yn/yJKKouurhjeN9zKRPYNMA1Eio+ubNg1ZhHesuDWZ10gggBkLT6RFBr8/36
         uV3PU/a/FT/3IEsbwdkvHBDcgUe/94//heQURsap952aVulNITPbxJuhFhQNePFfjiFO
         Y8cwr5ixMeM8OTp1Vmx+53RbrNXdxqqG/+aQp2Dgx+aw2JfcaS4zDqrcT6HzPRZ68g4M
         /ddA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OWg8UzyK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si591614plj.1.2021.07.09.19.27.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:27:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4ED9D61428;
	Sat, 10 Jul 2021 02:27:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 23/63] scsi: iscsi: Add iscsi_cls_conn refcount helpers
Date: Fri,  9 Jul 2021 22:26:29 -0400
Message-Id: <20210710022709.3170675-23-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710022709.3170675-1-sashal@kernel.org>
References: <20210710022709.3170675-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=OWg8UzyK;       spf=pass
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
index c5b7d18513b6..b9981078375d 100644
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
index a26df7d6d5d1..2f1553d0a10e 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2308,6 +2308,18 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
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
index 325ae731d9ad..71c78410e6ab 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -423,6 +423,8 @@ extern void iscsi_remove_session(struct iscsi_cls_session *session);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710022709.3170675-23-sashal%40kernel.org.
