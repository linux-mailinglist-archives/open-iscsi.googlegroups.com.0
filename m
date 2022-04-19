Return-Path: <open-iscsi+bncBDTZTRGMXIFBBTXX7OJAMGQEGHSLWYY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id B34DD507759
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:13:36 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id x3-20020a17090a530300b001d0e5927c83sf1652151pjh.7
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:13:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650392015; cv=pass;
        d=google.com; s=arc-20160816;
        b=qF/xrpBCtejjriFO83gbu6RBjf9L0vznE56OprgVjv8NRFbRtdNVizjGwoW6aH7P5K
         opt+12m/BKNRU15azuJs4vjQoG8C9jBUnyw48/4MQMhNQ80M+dE3fmrmI2+rzHJ54XXP
         Ie2rt1m34PYTVnzEFNoLmi9flzBnhwV3JvlgIRVLNgBmB488dELQcRwyKeYprY/YG03v
         KW9WSF71JFyxV04WYSeTblaDQU/Syr7jelC6IAl5eX1zfa067yf2bGTUnJSqNiCf0VsF
         3TAbfuA2Ub0Uzvp14BQMO3x7n98sbyMpFvnRfbC7Voi4FNIxXUsr4G066UgJGU2hDZu8
         x/ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ZYz3aKOtWWnbYUeTwhul5XFAbyrJwpZAa9jFxpUIAqA=;
        b=z4rJudic2kXXorpwtQpMlP0wPNqCK3zey3KM5sWJMG2GuLdt4Sji2q+moJ0DhxTWpV
         jaOvjFqTadf4ZHhNKCF9kMrDwLESqskOeJPIzQtOmov723YF0jZe/3nJQ8I4CZ3AqlDa
         k28QGwoHHtfuPgmj4oqvnKlizvGNmeJYwcum+MhXeeJNSqLcDPAi8MVzxZOfGp9cPAQI
         gctf69/06tDLB+sIfuEtU3j32T1DV1jw9WsM5aE5pMh4UF52R6icKYcFZLVmXBuz5MHq
         20OUxXzKVONCgn92DZtgSIYBHiusjLRurJhatyk96EYjvAup5IqV7s3IrVVfQR4oJFp/
         gqEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ulHzuyr9;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZYz3aKOtWWnbYUeTwhul5XFAbyrJwpZAa9jFxpUIAqA=;
        b=HPrtuHWiS+SI4n/enVks4ryXYxOxqvSR+c0IymnrIUnlPDrnm6R0h3p5w0TACh+oFm
         CmxeFZv+fi5sdQlDKDU7sJeFg57uJ58Yceory6aw4HY38dbQhnmeiF6+Okwsmhih7QEQ
         GKvdAzkhfuhnnDrTlFsvDU0WNl2BVXMw4Dfi4nIJ1blj1ghiF8UvlpciLilJ5gLUzreU
         ddQFf4y49cSn2L5EIBj9hWi96JUL8/rkx5sV1NLB09jWZZpFAVTOyjZAjjiGXspSVrKP
         zZtezIVfG0oTXnIEbU37b6VRuv8qO9Ds/KLSLtt/JYcaWXtWYTskebJUq4DMu0bMOWwq
         Ky8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZYz3aKOtWWnbYUeTwhul5XFAbyrJwpZAa9jFxpUIAqA=;
        b=meDQj41+HZb6kPdigrDhogh/H+AMZ48ZdeO4qsbpaLzyWCon3cfFR8ZbaOuEyWbqOy
         61M3bC1zkJqXKdXZLgyKBx7pLI+6t4NvQ+OEYac09P+MGwmCLuCGz8P0jJUZJ+3deqhB
         f03XIFP98lCjs5UnMGyeCJZz/rGKUlELiXLTRnz/3IjwW0MfCSPEiQVgboBi8vun1k8b
         OEGRGp5eKfATOEQ2neG14IzsRzFRWDiL1ryAdBsTPOCmYZzY1mLu5Ehd8gPu2dzKbdWQ
         V/czSddErhLZtfQd423+BVAPGR1GThI+Pt6GaH/ZB0fyEz6V+xWcxTVS7t2lLdjmtM8M
         S06Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532+oelpZrajTeoO3OVdcrQaNcg0kXNBuKLAGhJ4oQVy5ZIpXDV7
	AhEHaSNu7TOU0jExLoKmGFQ=
X-Google-Smtp-Source: ABdhPJzoPIHhAsVfs2G5jS2z5t2aYalLxHBGhsOwFVj/6jcAGkuEDMhm86VHnCe2N4M5dSWIKaX7BA==
X-Received: by 2002:a17:90a:5601:b0:1d2:d49a:c3d8 with SMTP id r1-20020a17090a560100b001d2d49ac3d8mr4874894pjf.113.1650392015433;
        Tue, 19 Apr 2022 11:13:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:f54a:b0:159:1ff:4e9c with SMTP id
 h10-20020a170902f54a00b0015901ff4e9cls5850780plf.7.gmail; Tue, 19 Apr 2022
 11:13:33 -0700 (PDT)
X-Received: by 2002:a17:902:ab43:b0:156:6f38:52b3 with SMTP id ij3-20020a170902ab4300b001566f3852b3mr16781223plb.135.1650392013658;
        Tue, 19 Apr 2022 11:13:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650392013; cv=none;
        d=google.com; s=arc-20160816;
        b=gYIVWvchyIo6hpVVUKC7GW8jkSjhZ5CaWAmyFSz1qlaNnpqLrSVn/Egsx/D5FBfoG0
         JaN3Jllb38iOZV9r/5rWHVWMTn3gcVycjvgvXDBDdRT7tkGHGtJc2ZyW5lgaXvZwkuE+
         RZu+omsEEe6kcVQoJ95yABYjvwnHD16ePxOy7d19yU+/h2IApjNJ/IOzqC1GXHHXZ/SL
         BFsZK2avKUAOCm74GTCv/+7YCRQdRtraRWbq63HObBySZay88iwlkUk0FU1/g1TYHL/q
         CTZHFVevxKI3oK6N/zBaeC9lhfk8+vk0hyzOlVIMV9NxSDH8xhqGd4ocZ7wP/UO/y1vW
         rHBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PJd0fg9u1SrKAAnQD1K3wiIhMXzNGL9VngAAEl2S7W0=;
        b=wl75N5m9I+mqSvG0T+xpWr/ycxouCxs4jDrxBiOPDTkS2Ha2/CjvMI6lDAosRKqEGK
         RAMofAm22sU48gS9gNYMlJ1PGY5UaI/kPJDPrTr5yOeJIPSBkxruLbKNoR/j0tWkKzDc
         u5AFLpVBtSurRjZZGZFFEPs5biJ+QI6HqkOMw7xzpkqmxPcSm03PXy52uUQzjog6cmpD
         C/eKfz9AgUa2lMWQ+51SHiqkS1TgyQbPGozDBzLNr4emZrzEtkmPt8VOEifuknWIg7Zd
         Y5GBBPHJMkh/V67HTMbdweoCoDo+lCNdejwBLhsGVRK60lwxGg++XCGhH8kHwspMKY73
         Ys8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ulHzuyr9;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id y9-20020a62ce09000000b0050abaabb708si65586pfg.1.2022.04.19.11.13.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:13:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2FC726133A;
	Tue, 19 Apr 2022 18:13:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8853C385AE;
	Tue, 19 Apr 2022 18:13:31 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.15 18/27] scsi: iscsi: Fix offload conn cleanup when iscsid restarts
Date: Tue, 19 Apr 2022 14:12:33 -0400
Message-Id: <20220419181242.485308-18-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181242.485308-1-sashal@kernel.org>
References: <20220419181242.485308-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ulHzuyr9;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181242.485308-18-sashal%40kernel.org.
