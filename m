Return-Path: <open-iscsi+bncBDTZTRGMXIFBBTPX7OJAMGQEWNUFXBI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E16507758
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:13:35 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id d18-20020a2e8912000000b0024dc30cb56dsf1418003lji.15
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:13:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650392015; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8P17a3GITpRZRRcCiLKcfG25S5XbK3rL2ix0VnOO7hRh047qmH1T6DJ05s0+xpy0p
         8cdNIVfL0skaeu4Yo3rYFSKn7dzWhnIDIhhYF0tNOVqG4kK6yMIahoFalSHFqQBYoClX
         bbFE7X+6Q90hX3zOUCUHS8YuxbKDGAMtInvqidWEnXd0T5gDClc/mJW2G7FfDYr+HrmJ
         ACN2URWAE29w3rkhAYar6BAjpWjQRDfxNztZmnr1RtNM/0LCDKqyy1qE9ZpxBK8IhDKr
         A0T1BtitNKzR4xKFm7wpKcdmir9fN58gLrYZFyWAO6OMjvSpGeOlkE7ahUqQDunQNiiM
         7nAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=aAu7QFTIKTnfX6Ozsbd7kVY1fhi7Bq5OngDRHfQLOv8=;
        b=r+C/czmI0kMvH4dTlYZeH3yRfcvO6eLP+fe1C85GLQMXPEeKN0l2rMM9DzASAWMBcR
         nGMRwNFqPWP+Z5feV/8y4Ya2tA2SQn8gPxW4y8Yt+rHlYc+xapo0461Cc8CwXIwrSHdo
         s4XiWWtNB2keCKwUkBE/n1Z1MqjDJU0EsMA+as7hV4m0PhG20llN+ZLlXl6IlEeiJzw0
         TV3iWwuPIAJxOf1l3Li8mshz1nTFWRtlCZZvHYkdl0yUM/NmFjf6jRLwhmLMzyToffrI
         bHRhlwz7f1SsmNt/NramaHajmu7HvefbCjlw3F5tmSfTyz5AO5FzH3KBPEAf1fmrYJzi
         xkxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rpanCawZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aAu7QFTIKTnfX6Ozsbd7kVY1fhi7Bq5OngDRHfQLOv8=;
        b=VChtzVV/GCAqjZmYCcvXE/xnEqfg1egwTKT/MWDST5mSDz+NauV1amPTl15KI+SHEF
         w8b18lMNbQDC0AEVdA0S6HgPnzAMSsKGsRRL6SWFT0Zcd13PuuhLQ2YMv5wp2UwgQRBz
         KOEUwt53P9Rz4geHQYDk96IIfJydsRU0/rVWeFf+mk+EyzLR8s1Z2/OE/tMwNDTCSg5k
         AcfXCrDiC/gZJQccE3+XwFk2cDfwhBsjTJgYZnFDnqqrzmdOZkD93JD+y8PsOfDwT/bI
         d3mSRLPidfMjTWR1sLXhOih1Riwm/QW1gpb3cBg2peyL9iDIg9Sfq9OOYfF8pO1rezMe
         gwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aAu7QFTIKTnfX6Ozsbd7kVY1fhi7Bq5OngDRHfQLOv8=;
        b=4CnB1I6rRM9PaRX/UI5zz0sT9x4kZAViYvPnZvfuJ7BFDxj3XK7OYt+Weuq0FbelcW
         fzZRuhVLLLLYbB2yaXwc5hgu/27XlkhnVQNdYXg03kYWCBgPXjp6I5uVjQbq+1d+XCzE
         jnQ/0nECWcfqfovdNsQQWbFigO3vl1O1zJIatBkxO/J8eiYkl4Sx0IFXsJJ6ZqEP40r+
         /0OMZNjm8Khy+pzQTdC/c6kvQAS1aJiG+qRrqY5wKXSaeW98Pt3PBwxH43aVTyh3Bjdx
         kAW02cvFCYtHNlVYuFVzxq2R7cXmhb4NYRkYgFhQGugUIlIC2dMDnsZfRjZLK15YuPI5
         kvFw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531MZSnODeTHZXcdMTqSOeFQCl62JVEarp1JszuVV6+1sbSnFklO
	a0e0HO/W8G5LDKZ+FTslyPo=
X-Google-Smtp-Source: ABdhPJxZ/o+NNYaovOp1/DvIz10e/IBBqZwX1AvxwA8q01jVqk+kwH+yFmtDJ0wRoYqD4xd6uqtpjw==
X-Received: by 2002:a2e:bc28:0:b0:24d:d4b3:ed14 with SMTP id b40-20020a2ebc28000000b0024dd4b3ed14mr656583ljf.238.1650392014851;
        Tue, 19 Apr 2022 11:13:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:988b:0:b0:24c:8e92:3db4 with SMTP id b11-20020a2e988b000000b0024c8e923db4ls2929349ljj.4.gmail;
 Tue, 19 Apr 2022 11:13:32 -0700 (PDT)
X-Received: by 2002:a2e:904a:0:b0:24d:cd96:f8 with SMTP id n10-20020a2e904a000000b0024dcd9600f8mr1767154ljg.32.1650392012053;
        Tue, 19 Apr 2022 11:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650392012; cv=none;
        d=google.com; s=arc-20160816;
        b=ToYaMsAMvlrt7EV4+i+7SCCYm1Zxd3fx6zVBCH5XVx16YEhbJAyw+e4z5jEKxIBFzd
         9YsWpy/yuDQ8K6SDb1dM8O300npeYpUHit3jRUBibS6z2eFJ8YjmhVxVnhRGc+Lyk9F8
         kNBBaBWHC5yIcKJtWTXcgXOVxtUNlOchNb5Vw2Oe7rMxsaxYyqmbwL/maFj+6Xe17zad
         ilHOxo3KzLFlc9zZi94OIIvqkC1FYoG15+GHMmGKC6r0WDtSnAGFwGdOAIETSctVeleA
         9EUo7SFY4JHGtAE9qN8aHf84vTPjFIfrMnKCOVC5dPV7H3ymz967tJwYwFanh8vx5LPd
         cN3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/J7nSl2TTSfO1tqqh2MXViNugUWiOp4EonyD5kSc0Nw=;
        b=n3/F9wY0XBdSDrS74HIi4E9CK3YFOjZJ2yY4Y29+z8gFpMg6dEEBITJGMTZJNMYtqO
         R50AEKdFOJgs4te61Tbu6hxbE7Uy8j6aLMt1K8eduMR6GYxDtnD4chLHyZ3xa4OY+ibR
         NQW4iAKCQ6mIm/qmH4mFRTOGEQM9v7BFqECqNxtJN9mp/5N7q0kDlqoTHFaSmkjsdccR
         4F9YoJjDhvB1wE4LFohmcTC2KUHr5D5EFb13PiiVX7A4nEs4GFdgaRCPIqkyFZeeu3Ug
         v9Y2EpmxGLhFzrkVYqKOLwgZbphdNQ2Bu62dsNmDkquBNDO+hvCB/RPEdiGTXY2783BR
         HJMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rpanCawZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id e4-20020a196744000000b0046fcfdd417asi512161lfj.4.2022.04.19.11.13.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:13:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A02A8B819A4;
	Tue, 19 Apr 2022 18:13:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21DB7C385B4;
	Tue, 19 Apr 2022 18:13:30 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.15 17/27] scsi: iscsi: Move iscsi_ep_disconnect()
Date: Tue, 19 Apr 2022 14:12:32 -0400
Message-Id: <20220419181242.485308-17-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181242.485308-1-sashal@kernel.org>
References: <20220419181242.485308-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rpanCawZ;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181242.485308-17-sashal%40kernel.org.
