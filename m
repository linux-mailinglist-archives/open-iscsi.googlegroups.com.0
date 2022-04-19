Return-Path: <open-iscsi+bncBDTZTRGMXIFBBAXX7OJAMGQE5XFOYEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C221350774B
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:12:20 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id y22-20020a2e3216000000b0024dba34425fsf2088507ljy.8
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:12:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650391940; cv=pass;
        d=google.com; s=arc-20160816;
        b=n7akz9OkuVMOXUVfqFYRheAcCys305T8RQnI2EEsV18bxXr81NNkCzjl1k1/GuIaWj
         JSaJgeZj1AEaGX2w0mmLs7hejmvl4Ada2YCzr7RCLZ4ov5MavSqSWwPGmufy6Poa0yKW
         q6qJlWRq0EI011jKuXCjKWxtICKUN66S6qymyTZoTZviOtXe6jlQRsr3e/lSYVpoeqKi
         pFiaicyfZLpGZ3cMXm1bISDL9nQqEtxDJOmHg1OiZOIyf+RhMMm5Xy+DsUT8UadBKr5v
         1kJZiyRlSDzwNedOH4FavaEY1v4wRfzXkdM/tPEBJtRHhJ3SlyjUonO2aYlBze/yGTbT
         IGjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=+NhxY5sTgqN6gAuiOLYwN5IQ34zDX035OpxivudxP6g=;
        b=Z53dW0VfCBXuOXxMWj8ncw3ZfZKrtnW62HxKOEBZ6M4iGffpjy0jOC9zqBYrTInbtC
         V3tcVfB1a2ydHY7IEak8SDPJaCzaaTqwPV7b3A7IlL7YP9EvmQK2A3bAFURzxpk8NkFv
         KBhUDlNvchK/G8qg0HdARdEF2/uzmIAbHSWc2K27ScBH6cxZ1Eyo1hr/rP6Mi8hSF1rl
         CEaSrXZ1YL7A28tY7WOADrdZDUdn24+T/hDrCFjgBkX45u7H21PIZn9Rq8ogPXQYpd/A
         W+LDjyw/MtRBq4Z4sItUQjv1xNhhkKn5a+4XQWXg+UOr1cFIU1TNDTsFSmaeihXsGdEB
         uoEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EvxlHskw;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+NhxY5sTgqN6gAuiOLYwN5IQ34zDX035OpxivudxP6g=;
        b=fr/3qJtPMoP79lPDDfZxVBuKonmRAeH1JpkBozJDHN87s8RPZEvi/FdMgcLmIvwXUj
         erKCTBJQNSd6CDpe7voCxxr+3JOcQBaXMYfR1I9ydWtiKiPGkO//eUlzupYj79vyAMme
         7X1SgUWp49XSUmHidBf6zeNlwrzCQs/VHGLcDU6PD6tBGhLl7YiWgZROmTxfd4tbZWra
         A4aCt3nL3GfyQd6tADJBRDocZgEbCg3tbjuUIwC/hwZQfQee8P3dzGL9d73otNPmPnQp
         4KJr56/a6QcGGCZnTt3cXt0DQDyZPO5Hk5RwRhIjQt8DwbTGa3O8whrJIlq2H9JToFd7
         I1CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+NhxY5sTgqN6gAuiOLYwN5IQ34zDX035OpxivudxP6g=;
        b=IqDR2RBshm6xjy4kQ+xgBf0DArzxxiQ3W0vzWJG/+0GfE1gT4O4UPCf6te14m1L2MQ
         7+OfNqqD/RPWrKsflpkXPZ+nuLPqS7moXBjuxFTIsEIHBMkSgdYAYuZ/Eh20Qg6BCJw/
         beJHn8cb01wjDyq3dzIGYbumxBTA5ZGfpcHz8JMV496MpI6ykwPAvT5AJYZ/4t2Zm5Vr
         jFVhYqvTOZqSyYvvEE3WdMl6ewxjZ3t0ujjh0n3aWNj2Di84YskLxH2PiyyXsCeFYmGl
         +KYYlZ5LhMyqR1KTxg9aar2L84LvGkgfTTYScC9skhoZp+KhDlGdTjeNM2QZSYnM6B55
         yz/A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530WphpNEpk/smBVn0tf/WA4Xo3YEQ6uwqPMBtVH9nf/GEDeSj6o
	6iNb0+arh2VZHK5LW6iscp8=
X-Google-Smtp-Source: ABdhPJzeRRp2fWe4mc+g+6zE8rexuzepBV/joLnIT/6shOPGyJZM7YcvEouvr+qgo4DVNtrDjh66BQ==
X-Received: by 2002:ac2:5fd0:0:b0:46b:c1c5:a602 with SMTP id q16-20020ac25fd0000000b0046bc1c5a602mr12108200lfg.444.1650391940078;
        Tue, 19 Apr 2022 11:12:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:1693:b0:448:3742:2320 with SMTP id
 bu19-20020a056512169300b0044837422320ls4385263lfb.1.gmail; Tue, 19 Apr 2022
 11:12:17 -0700 (PDT)
X-Received: by 2002:a05:6512:108c:b0:471:aece:a303 with SMTP id j12-20020a056512108c00b00471aecea303mr2189680lfg.509.1650391937373;
        Tue, 19 Apr 2022 11:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650391937; cv=none;
        d=google.com; s=arc-20160816;
        b=h+OLh4TCSxiXXoRElTBnTUw06vXFNPpAMTXOXv9jGNessGmCHvbCIGYytaYt72vHZG
         5/tf3xW3vJQeDDYO8Z3Hg4nZYyrtGZ6jmrzwNlLGdiarfcbMYCG6gL4gNXClv7ht1l8r
         UvpEQHxjr5CwOpwpJDVvJEOC7Y+0Xm5UadPR2fjopn/lxbV/fJHIxv53ZIRPSGSGwlZO
         hC1vTzm1WCH1tVy0lYfL7UB5xe0nm/3/zAr6Z1uV9GlZHDGFP4tlM85gGSo3FXPkhRwE
         sRVXPibXaLNXxRrCNDVJg0zksfP/xY549k0uJ5PNVcet6xyLi64VBfGSp0TfAOff/5I3
         Zt9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PJd0fg9u1SrKAAnQD1K3wiIhMXzNGL9VngAAEl2S7W0=;
        b=Se5vwc2Zmu31+nVVQ60NWO/3OQqdwJbd9Hd2elXB4c3KwUhk4Mbe2tYBKcR70sO+yd
         /1RIaGR3AYQtOvEAI2v3ugV6yItpo4YVFSjsomyDWhutSF3MD/PYGxcn0Pw3YWzLHSc9
         VspS5Q0N4t6zl4SOb3C5CcbYNrKYW0s+DDnVnfoEJFB6ylDR29TExTMG3zmKw+zaMn1I
         UvjWYPVdREJWVWJLSU7YqKgnm1M+YaOPuPSRZt2yix7p/qkJnXizY1WKXPYgVVSLkDye
         L7kwoKFO+ymBpor15fXLAD7aGCSyNCL5Qbrn75R9i87J1poAevIbmZiI5ITj7XMhZj57
         kfTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EvxlHskw;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id q21-20020a05651c055500b0024aff6ac16esi4915ljp.0.2022.04.19.11.12.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C71B2B818EE;
	Tue, 19 Apr 2022 18:12:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39916C385A9;
	Tue, 19 Apr 2022 18:12:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Manish Rangankar <mrangankar@marvell.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.17 23/34] scsi: iscsi: Fix offload conn cleanup when iscsid restarts
Date: Tue, 19 Apr 2022 14:10:50 -0400
Message-Id: <20220419181104.484667-23-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181104.484667-1-sashal@kernel.org>
References: <20220419181104.484667-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=EvxlHskw;       spf=pass
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

[ Upstream commit cbd2283aaf47fef4ded4b29124b1ef3beb515f3a ]

When userspace restarts during boot or upgrades it won't know about the
offload driver's endpoint and connection mappings. iscsid will start by
cleaning up the old session by doing a stop_conn call. Later, if we are
able to create a new connection, we clean up the old endpoint during the
binding stage. The problem is that if we do stop_conn before doing the
ep_disconnect call offload, drivers can still be executing I/O. We then
might free tasks from the under the card/driver.

This moves the ep_disconnect call to before we do the stop_conn call for
this case. It will then work and look like a normal recovery/cleanup
procedure from the driver's point of view.

Link: https://lore.kernel.org/r/20220408001314.5014-3-michael.christie@oracle.com
Tested-by: Manish Rangankar <mrangankar@marvell.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 48 +++++++++++++++++------------
 1 file changed, 28 insertions(+), 20 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 126f6f23bffa..03cda2da80ef 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2255,6 +2255,23 @@ static void iscsi_ep_disconnect(struct iscsi_cls_conn *conn, bool is_active)
 	ISCSI_DBG_TRANS_CONN(conn, "disconnect ep done.\n");
 }
 
+static void iscsi_if_disconnect_bound_ep(struct iscsi_cls_conn *conn,
+					 struct iscsi_endpoint *ep,
+					 bool is_active)
+{
+	/* Check if this was a conn error and the kernel took ownership */
+	if (!test_bit(ISCSI_CLS_CONN_BIT_CLEANUP, &conn->flags)) {
+		iscsi_ep_disconnect(conn, is_active);
+	} else {
+		ISCSI_DBG_TRANS_CONN(conn, "flush kernel conn cleanup.\n");
+		mutex_unlock(&conn->ep_mutex);
+
+		flush_work(&conn->cleanup_work);
+
+		mutex_lock(&conn->ep_mutex);
+	}
+}
+
 static int iscsi_if_stop_conn(struct iscsi_transport *transport,
 			      struct iscsi_uevent *ev)
 {
@@ -2275,6 +2292,16 @@ static int iscsi_if_stop_conn(struct iscsi_transport *transport,
 		cancel_work_sync(&conn->cleanup_work);
 		iscsi_stop_conn(conn, flag);
 	} else {
+		/*
+		 * For offload, when iscsid is restarted it won't know about
+		 * existing endpoints so it can't do a ep_disconnect. We clean
+		 * it up here for userspace.
+		 */
+		mutex_lock(&conn->ep_mutex);
+		if (conn->ep)
+			iscsi_if_disconnect_bound_ep(conn, conn->ep, true);
+		mutex_unlock(&conn->ep_mutex);
+
 		/*
 		 * Figure out if it was the kernel or userspace initiating this.
 		 */
@@ -3003,16 +3030,7 @@ static int iscsi_if_ep_disconnect(struct iscsi_transport *transport,
 	}
 
 	mutex_lock(&conn->ep_mutex);
-	/* Check if this was a conn error and the kernel took ownership */
-	if (test_bit(ISCSI_CLS_CONN_BIT_CLEANUP, &conn->flags)) {
-		ISCSI_DBG_TRANS_CONN(conn, "flush kernel conn cleanup.\n");
-		mutex_unlock(&conn->ep_mutex);
-
-		flush_work(&conn->cleanup_work);
-		goto put_ep;
-	}
-
-	iscsi_ep_disconnect(conn, false);
+	iscsi_if_disconnect_bound_ep(conn, ep, false);
 	mutex_unlock(&conn->ep_mutex);
 put_ep:
 	iscsi_put_endpoint(ep);
@@ -3723,16 +3741,6 @@ static int iscsi_if_transport_conn(struct iscsi_transport *transport,
 
 	switch (nlh->nlmsg_type) {
 	case ISCSI_UEVENT_BIND_CONN:
-		if (conn->ep) {
-			/*
-			 * For offload boot support where iscsid is restarted
-			 * during the pivot root stage, the ep will be intact
-			 * here when the new iscsid instance starts up and
-			 * reconnects.
-			 */
-			iscsi_ep_disconnect(conn, true);
-		}
-
 		session = iscsi_session_lookup(ev->u.b_conn.sid);
 		if (!session) {
 			err = -EINVAL;
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181104.484667-23-sashal%40kernel.org.
