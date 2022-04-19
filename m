Return-Path: <open-iscsi+bncBDTZTRGMXIFBB77W7OJAMGQEL7KTURQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5316850774A
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:12:18 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id v13-20020ac2592d000000b0046bc30fe894sf7238677lfi.14
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:12:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650391937; cv=pass;
        d=google.com; s=arc-20160816;
        b=gBoMDZ1P15g8ylsE0yIrqFly1Pu6fKeTA/FNKCFI6ZIPoP5D0M5ix4SarNX+5xCCSq
         UhFF0f7H4OHQKuEHRECMrvLDvE+dkNSYCXdl4ZQvQ11uqvk9HJtLnfywjyToRXY8nuZ6
         FjB8a1sRl2aeHv70+YCm8WF23XmSQRNG3rUTpMrXNIqtbYPH8US6vYP2ttejX5dVE+lg
         GdVBH8Y3JfRlDZw8iRkyD+HmWRiCLnrvzA38/tpH2KB0A0UUbw1McnhybOJq9zssim/6
         rJKyblZUrw7damzFtfqmZtX9HZO+OxSm4fLEmpVyTXL2NOmDP7do+64srJ2WgTRD1p3d
         P0Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=oY8vc+ofJ6GP7MLnD4ZfCUmSxWKLkN2njLr+5GihQsk=;
        b=TIOZHvLOydrh7/z9EKiNvTp6lAFSHAzzUpE80lv1Vf2vz8bnWpK5zCnZAIEFU3dqkU
         bNOtZQyIm3AhvqNPg0xw7mxG5uTMWFLgtzxdzzqVkllAac599WM/Id0x4FTDrMvc8oGB
         pGSHRGQq0eUtt3q2JeGhDPfY0PxBydgFyvESFqaslBH9XpK0ArC6CycpvoZ2hVt27dCJ
         9q00iRPlGy0iNGKTEkAYHAAhkjUJMAi/9OhDSp+/xm8yiMGBKV+q9qKqcMnXhYNryKUI
         ldJ+ohn+pcI/lYBzSqJbbPn17mwyxz8aiFm6okBoN97KhztPkmRHfUmNR1nuZge8VK9m
         q/cQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rKjYJcU9;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oY8vc+ofJ6GP7MLnD4ZfCUmSxWKLkN2njLr+5GihQsk=;
        b=OiO5RQVoBWNmyydxocReHRNZy6NA9NhloN1F/yx/z4KAHdppCnMybRUQNCH9ovI61+
         tC98tULxug3YAebmvsexi1qgvWrDRPY5AtRSJxqs7+YkqDd+qaXo4qdh3S+Oi+4pVsci
         5HJHNNL8alvtvCJQdAwQOGjKv66KsYurPj0RiOwDiO5rkUnDDPiEKeC+G+vBBTy5Hwnp
         rmrY7zerDHbN/vuS+DOrMemnxrMp8CqPi8Al8a2dTqclZoe9k3NHcF6aS3Svk2GRKubE
         A+Kv8iZRV9Gt3qFPK5HcvNv9JzuyBoYpLGT8n+Z0tggtRLG9KpT3DuSXHdiRYU4AS14h
         b3zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oY8vc+ofJ6GP7MLnD4ZfCUmSxWKLkN2njLr+5GihQsk=;
        b=S5xBVNDstPAXu362mP4wKGEWCeqedOe48tEv/mqM+OOuj64zkJToZdVuU17si9Etva
         Fh3qtqX3jWK9QYC2uc1AFupuW7W6H8E0f3SOsYPqnlZakT2qy4YxTyQ6Rf6EYVN1tGjO
         7ZRh7fVvIIjF1Q5S39ELOI3Xsdfipxu7JCFoGN6hnxlTLyG340GrbYRGUx2s16UlXATQ
         npi7HdB6oO0ZHQVyf1F2y3u8RFKRbDENX4j5p7aH3BpcytIL5uy5yDjAm/Khwliz67ZW
         j9v3KO0r0oGdRfOCxDIsQT4YKZHmFk+7Hk11ivp/tY3Tpyx3I58cA6v2QPt6QeGSsvlG
         C0VQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531zRZcBAUiSGOyke0JIRac/09clVRPNhq+UyxLQNhkpXkL+cq/6
	7G/Pzme7wlLfBJRG8F90QBk=
X-Google-Smtp-Source: ABdhPJz09i2h9iDUefsOKM/AppK6TR1Q1aq856GAHHK23B//OkRdJIcBZOJ+aLnA+zro5PWfZv7J0A==
X-Received: by 2002:a19:7401:0:b0:46e:bf86:3a26 with SMTP id v1-20020a197401000000b0046ebf863a26mr12190035lfe.271.1650391937774;
        Tue, 19 Apr 2022 11:12:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:3f16:b0:449:f5bf:6f6a with SMTP id
 y22-20020a0565123f1600b00449f5bf6f6als4392138lfa.2.gmail; Tue, 19 Apr 2022
 11:12:14 -0700 (PDT)
X-Received: by 2002:a05:6512:30e:b0:46e:bf38:9cac with SMTP id t14-20020a056512030e00b0046ebf389cacmr11549915lfp.38.1650391934537;
        Tue, 19 Apr 2022 11:12:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650391934; cv=none;
        d=google.com; s=arc-20160816;
        b=fNeYEznzBeE04fydCUhWfiyooNTeKvK4fyIazJG547eKAKuZMOdqQ38RvL47HReOwD
         tKe6qacM6okJA0ChUQ0j+ex1Jvx/BgZnkMahZvBuZNeJHxJDiYEzvIYV+X/IEWwynlk4
         N7YDCI5kDJFHUVHMipG7GOILjcsoTTF9KhqwqoVL84wl0osDMj/h+nErmHuKZdhnAshj
         AFzlWcq7u4j4lA1GnzNRw0AsHGk6PGiujPjKySjpyfAkaI3ebnNylnOjE3EnGXXGwmMm
         mb/UwNZ1mk4btn04R1puoy6Gvh/4k9Hi0h43Z32ZWupEn9psnfa8Gs51aljvXMyP79ml
         533w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/J7nSl2TTSfO1tqqh2MXViNugUWiOp4EonyD5kSc0Nw=;
        b=Gg+k3qI/y0v1K5U7jJ0QTN13lDd/Bx2wV6EwTtqkMTi6a5RyhEG1MUvUmJj2RzVLE8
         rKZV0CJANMJhNT0MYpPby7U/AA051hdnlSSSyu1al61LaoRD5eXGYFWmgJR4umtO5d6J
         47h53lnApMh+NrHyGpA1R4O6fj/e9tFSadkPG0iOMxApKgwwXt34aG7RNZcCBmgmsFuj
         qMqG79cvP/A+6SdVJD2qo0UZrjMCXUPqM6cgyWsrnMhPeE8FE8RMU66I5xckKuyRxvXt
         5OkIYJr9fQT0s/oGtcs3M9R7CPoOPw29LoPw//42mmkAPNpV+R/kOqXbyoJ/ddxGO7KM
         kV5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rKjYJcU9;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id g6-20020a19e046000000b0046bb7703c8dsi710728lfj.11.2022.04.19.11.12.14
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:12:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E6195B8198C;
	Tue, 19 Apr 2022 18:12:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D51FC385A7;
	Tue, 19 Apr 2022 18:12:12 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.17 22/34] scsi: iscsi: Move iscsi_ep_disconnect()
Date: Tue, 19 Apr 2022 14:10:49 -0400
Message-Id: <20220419181104.484667-22-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181104.484667-1-sashal@kernel.org>
References: <20220419181104.484667-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rKjYJcU9;       spf=pass
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

[ Upstream commit c34f95e98d8fb750eefd4f3fe58b4f8b5e89253b ]

This patch moves iscsi_ep_disconnect() so it can be called earlier in the
next patch.

Link: https://lore.kernel.org/r/20220408001314.5014-2-michael.christie@oracle.com
Tested-by: Manish Rangankar <mrangankar@marvell.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 38 ++++++++++++++---------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 554b6f784223..126f6f23bffa 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2236,6 +2236,25 @@ static void iscsi_stop_conn(struct iscsi_cls_conn *conn, int flag)
 	ISCSI_DBG_TRANS_CONN(conn, "Stopping conn done.\n");
 }
 
+static void iscsi_ep_disconnect(struct iscsi_cls_conn *conn, bool is_active)
+{
+	struct iscsi_cls_session *session = iscsi_conn_to_session(conn);
+	struct iscsi_endpoint *ep;
+
+	ISCSI_DBG_TRANS_CONN(conn, "disconnect ep.\n");
+	conn->state = ISCSI_CONN_FAILED;
+
+	if (!conn->ep || !session->transport->ep_disconnect)
+		return;
+
+	ep = conn->ep;
+	conn->ep = NULL;
+
+	session->transport->unbind_conn(conn, is_active);
+	session->transport->ep_disconnect(ep);
+	ISCSI_DBG_TRANS_CONN(conn, "disconnect ep done.\n");
+}
+
 static int iscsi_if_stop_conn(struct iscsi_transport *transport,
 			      struct iscsi_uevent *ev)
 {
@@ -2276,25 +2295,6 @@ static int iscsi_if_stop_conn(struct iscsi_transport *transport,
 	return 0;
 }
 
-static void iscsi_ep_disconnect(struct iscsi_cls_conn *conn, bool is_active)
-{
-	struct iscsi_cls_session *session = iscsi_conn_to_session(conn);
-	struct iscsi_endpoint *ep;
-
-	ISCSI_DBG_TRANS_CONN(conn, "disconnect ep.\n");
-	conn->state = ISCSI_CONN_FAILED;
-
-	if (!conn->ep || !session->transport->ep_disconnect)
-		return;
-
-	ep = conn->ep;
-	conn->ep = NULL;
-
-	session->transport->unbind_conn(conn, is_active);
-	session->transport->ep_disconnect(ep);
-	ISCSI_DBG_TRANS_CONN(conn, "disconnect ep done.\n");
-}
-
 static void iscsi_cleanup_conn_work_fn(struct work_struct *work)
 {
 	struct iscsi_cls_conn *conn = container_of(work, struct iscsi_cls_conn,
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181104.484667-22-sashal%40kernel.org.
