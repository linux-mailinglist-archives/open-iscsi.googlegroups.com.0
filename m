Return-Path: <open-iscsi+bncBDTZTRGMXIFBBO6Q7CAQMGQEY3GLNJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B2524329D5C
	for <lists+open-iscsi@lfdr.de>; Tue,  2 Mar 2021 12:57:48 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id a63sf22451658yba.2
        for <lists+open-iscsi@lfdr.de>; Tue, 02 Mar 2021 03:57:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614686267; cv=pass;
        d=google.com; s=arc-20160816;
        b=ULGA0K1ZIsX/WAXzvUbrtrrMfbh5d/6WBH2d65LyvVzqMxuyj57QP2MsMnHcuwCAzf
         o0VOJpjzWVjCgNrOAh/kUn7eonZWtPa/FzBVfaQugYYtXTF/d/o9Uaq6UFggTHrPHOQO
         QC9FQvNPjIzLYY2kZt03ZyQ5lwhAnrxeev8v8qdEVvXpaE1te2Kmb3xvmR+Yfki3Shej
         pQBFvxv6JTAAHUNcp1gJqUVeuBz2pZOmxHMZh7EB3O1FMekkR5PQTikdz/lS0vzTODOW
         PdmaQKbcCf9FLKZsCe0Cxyo8YdmoPf4Ng1vkzNp/82lN1fSLFHKRaGHoTCQ9bWWXr7TQ
         5JeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=kugGv7nuoZQV23BJVA5pmtnJ3hLIwXKYlIOLwjsv4Mw=;
        b=uHN+xEqxyT0RJgyjtYd1UFY6aHHc6cU2/JBmoYfQDzYTQRDeEW4cxN/pyFCC6fP0ES
         SJsdsPAa9oTtK7Gk4hzN4PKp8DjxwYNKuJ0HWDxzAoVstQ6lwzppCn8HAQ5ysL+MMr1l
         dfr9gvvLMxWEuf2SwhqS3HmpXgSRc3wQSzAIQ47XtFHk6jrWeLv+GvqClU4Z00ZHO9ug
         fe62+iubCnW66ubyUnFH4c6DNvSMCKlpZPbBlsKOQxUKrvAbGQMJpQyeU+GYHorsa3qE
         xxw9du/7kecP/kH52nOaEfgSEQbzyIBN2JDn5x7zKsqx3SXLyr0GV2ZrIFfXSqTmLnBB
         CCCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C+aMN4Ak;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kugGv7nuoZQV23BJVA5pmtnJ3hLIwXKYlIOLwjsv4Mw=;
        b=KkOsmumnoFyUgDBcYo81+FfLk2vcDebaFyRRBwOwiv9VkcJVwHJVcxIbbt/lgEoyE7
         GtvUvk8dElLamOll7SbWZgPl5XOEvsRz9aUVmQy8N7ekEV29pXup3wSpgut6AwMNBI1W
         +G7v09bLB3TxOQYSFyP7BkD7OmYtW0RALh7eyniDrUeKvV3uQDPMzVJCxp27MPdz+AN6
         xjGkXL+yBbkf2zgqEfoUFaOOcVlJqnVSnV36uKxV7TmZ8+9OGc4yAsQI+czFSSXhQlCP
         EUtqlvQjtAir7h9JeA85L5gGKGg/Yyu6b9pWw3AXr/aeKoRJ9sSl1dtD3VfrgdJiSLAr
         khRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kugGv7nuoZQV23BJVA5pmtnJ3hLIwXKYlIOLwjsv4Mw=;
        b=QU5fVVKaEEQMVzFuF/bt6iZ8bBy+xU8FSldFb3xji5lgzezygbvISP0/RqNwtRS+qz
         BUtBfBVidPZVC8GrP/kzHywh/H43uI1wR6PTRLvFetyvW/tmVNzY71BFz+59IVxc+CMH
         15GvsJmmhVLT+EmPvLb7fDAiih5V/fhc4EXX/63U6onhl1KcQpl7YhYWUAs+0S6PWWE9
         9eVxJLQ78yZUuwtpTgXtg/WipWznPvN3lxfu/DpWNACSI/f3TEV2wlBP/BsAzIF8/j4h
         74NTg4oVx7lS3ExrIKvXd48lo9DEPbB2489YWJYLyoAHx4kcV5uSEyr0iWFV2W+TmAkv
         AFuw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5316eh/DxhDswvu7/XlJjCHlcBC03Bf6cbVvsnLelBQFCiwk50C3
	a/cRuO5RJprAmGgcmUr6N/U=
X-Google-Smtp-Source: ABdhPJzmqQAgyoS8NTSp9x1To6xNfu5IfBwmiPF2sAAbQVo/qnWExMdiqwei4Sq1bBzMOWS2AiEb3Q==
X-Received: by 2002:a25:9306:: with SMTP id f6mr30685849ybo.483.1614686267791;
        Tue, 02 Mar 2021 03:57:47 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:77c7:: with SMTP id s190ls7771568ybc.1.gmail; Tue, 02
 Mar 2021 03:57:47 -0800 (PST)
X-Received: by 2002:a25:d744:: with SMTP id o65mr1367781ybg.387.1614686267250;
        Tue, 02 Mar 2021 03:57:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614686267; cv=none;
        d=google.com; s=arc-20160816;
        b=TA2JeNtzlo2xhEGQW7PwxwK1Fz6S7NZiOJ3bmSpxofpGVpi/9FRR1y4yq4MkO6Ty1E
         YRdlOo5FHCKy9C7GndQLwsQkwMTBM1Q0YsmpOqrxcAijKBYO8XEKMLMN/wA6WTLaVID8
         wlZjfw0y9uTTnK2T+e0o+AzS+BgPrdIAGvYjlsM1WGEyVvZQ/bM9NDQZnOaal/d0975N
         eYNaXouRu/3FI4mnJi1Fsy2HTykE/Rddf2I7k3xg3F66UngAeYB0LMTD3R8NAyKE6Q+o
         sAzpOsNgVq1elH8ONKHcROmBP99lBVrVh1RnWVwSyUSBV2PIibOQNGig3l53WDym7uFG
         rEEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JpGf9vVkwqkfNfBYSKbsYvg24hfg1QC5JNUg0/stgp4=;
        b=dgiHtJCL/avDWRa1Ck69ae3w/d7Rq8c27d1APrh85p+625nTPY3s6V2FTneAvG7RAh
         8q5W38hw0/2eM45W+kYyEoF5ic2DSZTaBnBFc+eAuH3DMBedzQpfSUzO26KNSbCmj91c
         U29BAaLWqVMZ5DWLR0UdN1w/xt+vN9EK3shhE1EUCT6HwQLOaBORXIImdVH3OFHtQcw3
         IAXppfiEuHkIT4LGizLDMeDxkgt2OaAAmKgpJwZZ8RmRURDei3arD+2x0/UtcAcZZ3su
         k/25dvBTV+x/9VUZ5TzsV3LuFsFVUwu7bGnAJJ9z6AqsnWYKxO9iiZM+mUrtwP+Q5B61
         m6Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C+aMN4Ak;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s44si1556798ybi.3.2021.03.02.03.57.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 03:57:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B82C164F74;
	Tue,  2 Mar 2021 11:57:42 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 44/47] scsi: libiscsi: Fix iscsi_prep_scsi_cmd_pdu() error handling
Date: Tue,  2 Mar 2021 06:56:43 -0500
Message-Id: <20210302115646.62291-44-sashal@kernel.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210302115646.62291-1-sashal@kernel.org>
References: <20210302115646.62291-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=C+aMN4Ak;       spf=pass
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

[ Upstream commit d28d48c699779973ab9a3bd0e5acfa112bd4fdef ]

If iscsi_prep_scsi_cmd_pdu() fails we try to add it back to the cmdqueue,
but we leave it partially setup. We don't have functions that can undo the
pdu and init task setup. We only have cleanup_task which can clean up both
parts. So this has us just fail the cmd and go through the standard cleanup
routine and then have the SCSI midlayer retry it like is done when it fails
in the queuecommand path.

Link: https://lore.kernel.org/r/20210207044608.27585-2-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index f9314f1393fb..ee0786bab4fc 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1532,14 +1532,9 @@ check_mgmt:
 		}
 		rc = iscsi_prep_scsi_cmd_pdu(conn->task);
 		if (rc) {
-			if (rc == -ENOMEM || rc == -EACCES) {
-				spin_lock_bh(&conn->taskqueuelock);
-				list_add_tail(&conn->task->running,
-					      &conn->cmdqueue);
-				conn->task = NULL;
-				spin_unlock_bh(&conn->taskqueuelock);
-				goto done;
-			} else
+			if (rc == -ENOMEM || rc == -EACCES)
+				fail_scsi_task(conn->task, DID_IMM_RETRY);
+			else
 				fail_scsi_task(conn->task, DID_ABORT);
 			spin_lock_bh(&conn->taskqueuelock);
 			continue;
-- 
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210302115646.62291-44-sashal%40kernel.org.
