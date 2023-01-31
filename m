Return-Path: <open-iscsi+bncBDTZTRGMXIFBB6OZ4SPAMGQE6PCSANY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8B6683017
	for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 16:00:12 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id q130-20020a632a88000000b004a03cfb3ac6sf6836257pgq.6
        for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 07:00:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675177211; cv=pass;
        d=google.com; s=arc-20160816;
        b=arR+ztMTPIacWm1mPDPyQLtOZ8Zy5ckP/pCChNhs6q53AyiOdgsKKTAgYAdzCQRI3Y
         xkuLbKQLFkpxULzjYGMC6Gmkdd6uDZ2/szmRrKk1uFwuD614Sn2TtfJLQJ/8SckoyeAo
         IHAoYHaQpueLdY0okSoqxYVF58XGaN7JzQSOXLiGQdYQ4rKowbOmGcVxqW94l2Df15CX
         xdHID5+bmK8ZLaOvFtY2GhSCO5FJbzDsw/gqFVwb3bVGVBIlEzgCFRg8MnPzcF3VSbpc
         IOyERq0kdEW7DqPvO1RrTG2MDd0paAr3GQOIFIliLOr9siFEbcE9AGIDIQ5HgI7Uiv85
         6big==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=AJd4CvIeTpKtXv1XmwsaFQR7K2reTPQDyoSY6PSNAk0=;
        b=kBYnSZtRG0PZxvBTAhEJ4Lr5lp5mAGGLzvgVnGSIX7xyEFaSkcikhtw61QXK3/Ddwi
         l1Yq/DEj1i9Y2FYNMVV/XgIGb/r2piJqfMfn93V36x0HQwkTAsSempNZd/ZeWLbBkErT
         RROmTMX6Lqnrfp5YtkOjsxB7RqMkbxhaIhHiQBNGqx5KAi0ypTydhyBELTA817E8R8x5
         56pRZ+pcATpCzLXsS1bsoj7iozWQjkXAHtXlQN/aRYNhuF6sCOxHjulvYDm3uYRJ41g0
         d3swk3APgN8MYjE730HOJsNKdWCJO7njgO3QKtn+cA37Sy7ZiePwFIgIdoKAO6PfXajV
         5UdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nWNlUV1B;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AJd4CvIeTpKtXv1XmwsaFQR7K2reTPQDyoSY6PSNAk0=;
        b=R0zLuUHyCnfc494qPvp91/JqAeSqZgfc5D3HqaOyVMeuubMrSi8p+KvFsuWtn5iTNA
         CAoFkt5/xIXD91gWno3BV/zJGBpuCXD+3ptSIFa94UKWjix9jEIVZWB/eeFWUgj8RLdM
         8GtZQ/Yi3v0X89muYZr2MK/8E+4IrQw496Pfvb8QtzRDptKgI+3bzCoM7OUx/gAweqDA
         aVZajKe0W8Tu1Qy/Yg1MTZGFJajxjaMQRW/lPoLWlWVwPg3UVU7gSCTOsEc0HEKzqxpm
         SpDuqO+U5TNkb29mQEUDvLSqnv3ElMrpRvBkC8yTb/2RqlranUkG6wDeQ4KUJVssK0z5
         UqBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AJd4CvIeTpKtXv1XmwsaFQR7K2reTPQDyoSY6PSNAk0=;
        b=MoLw/P2yW8MdY15NBI9kyss58HDTqAnrbY8mjBUe++5xRqJfTchIyxoxO/eBtxo4D9
         XaJ9XrW5e8wrcRdjKApu9ttDw1CxyKVUfhfow2CXp7IbZJzD0QeZdToKjn33O9kIucA2
         Fb+NYS5tetHsRfmoHRyFxIJN5+8cUXIfo3dDthqqDyB8wmCiQWOf5V2cElghrrBqVreg
         sap482h6VPsGo32vrj4zIP2nwMgihYWMWYka+mj9Tb8WzdSsOvMfeJYpa4nl4yrL4rEh
         0BOwKv0Ctx247aWvCTCVQBUWFeBe1cT/6qY5U8oohDOOdaV/xKe/UaVi2/qBuTSNODnx
         5FXA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKXnMC2cAlCWVznaoBjBm0iJlnXhgNmcYis8qFacftANwUmu6JUR
	Bpv71s4xRPD0GcRSQh5dgA4=
X-Google-Smtp-Source: AK7set8BOuxVoorHwsRUN1YSOcYSM27p4WYtFh4r/ecSZhPhsTfFLSbLP5G3ERrRXcXkouhk82V/kA==
X-Received: by 2002:a17:90a:e511:b0:22c:377c:3612 with SMTP id t17-20020a17090ae51100b0022c377c3612mr2519860pjy.60.1675177210769;
        Tue, 31 Jan 2023 07:00:10 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:903:2312:b0:194:d87a:ffa6 with SMTP id
 d18-20020a170903231200b00194d87affa6ls16772406plh.1.-pod-prod-gmail; Tue, 31
 Jan 2023 07:00:07 -0800 (PST)
X-Received: by 2002:a17:90a:7802:b0:229:4731:994d with SMTP id w2-20020a17090a780200b002294731994dmr58117179pjk.4.1675177206890;
        Tue, 31 Jan 2023 07:00:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675177206; cv=none;
        d=google.com; s=arc-20160816;
        b=xsFOyhL2uoLskjbE/++H38odjqDRps/ovbQ2HXzbbtt15d5VaA8UKkkH1D6FLI5xil
         QqEESBgSTWddAxWZxxDmbh5DJ26y1yiENJAvq0CaNA+2cLI9u881KALMkh+ElBnKo97f
         JYyy9RJ8CiX/wSmi9jPZ2ICN296i9btlxdSWrEnqVYzZ75+2jW+X/TE0lYssQtIBpd49
         GIwmKkmEvecyXZmyHjGw4W3urnV1/JVGnl02A9bCFYM28538kkZaQkm9ecxlZsbi2O3V
         PIZsYOMANsA4JikOr7g8Cu1ts68Wy5tEKKGoWmpdfrk3PNd3AdA4sqKnIEpPVwOcNCdd
         kQLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uJowrFcflfof2Gu9nCKCo1OG0SjSXs/w//ejjqbXxKg=;
        b=YEUtT1a3nk+67KqUgbgF9dqNS2gzlE93L0/xSSZAQTykdBtqCA9f9qmM0T6mQ7qrke
         IwJK1NPyslvSwy5C0HXXv3CDAR+By6XnhTcIivtJazbkV/9C5KYFoAL1Ro7wpQlY4Rpc
         Voa1lBvhQNJJ4N1e36QjyoXhj6AZ9vhdlXxzPq6UYHPW55ubvBcrn9NRNhqR639gRpGN
         yHREQbqK9Y/6JVvTNMZEvq2QlyzyTtwEWGJELkSWOjp1rElz4H09CqAIXi+siCgNk4uv
         Rvn3mONeqRABQ2J5CIlPY06Sls+fBOK7Gu/igM52vkrZ/psJ01s0NGjV71/3BzevFsRc
         oQRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nWNlUV1B;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id x8-20020a17090aca0800b00229b4d7172fsi1075857pjt.3.2023.01.31.07.00.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Jan 2023 07:00:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 518066155F;
	Tue, 31 Jan 2023 15:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FEBBC433AF;
	Tue, 31 Jan 2023 15:00:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	Ding Hui <dinghui@sangfor.com.cn>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 6.1 08/20] scsi: iscsi_tcp: Fix UAF during login when accessing the shost ipaddress
Date: Tue, 31 Jan 2023 09:59:34 -0500
Message-Id: <20230131145946.1249850-8-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131145946.1249850-1-sashal@kernel.org>
References: <20230131145946.1249850-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nWNlUV1B;       spf=pass
 (google.com: domain of sashal@kernel.org designates 139.178.84.217 as
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

[ Upstream commit f484a794e4ee2a9ce61f52a78e810ac45f3fe3b3 ]

If during iscsi_sw_tcp_session_create() iscsi_tcp_r2tpool_alloc() fails,
userspace could be accessing the host's ipaddress attr. If we then free the
session via iscsi_session_teardown() while userspace is still accessing the
session we will hit a use after free bug.

Set the tcp_sw_host->session after we have completed session creation and
can no longer fail.

Link: https://lore.kernel.org/r/20230117193937.21244-3-michael.christie@oracle.com
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Acked-by: Ding Hui <dinghui@sangfor.com.cn>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 9c0c8f34ef67..c3ad04ad66e0 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -848,7 +848,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 				       enum iscsi_host_param param, char *buf)
 {
 	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
-	struct iscsi_session *session = tcp_sw_host->session;
+	struct iscsi_session *session;
 	struct iscsi_conn *conn;
 	struct iscsi_tcp_conn *tcp_conn;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn;
@@ -858,6 +858,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 
 	switch (param) {
 	case ISCSI_HOST_PARAM_IPADDRESS:
+		session = tcp_sw_host->session;
 		if (!session)
 			return -ENOTCONN;
 
@@ -958,11 +959,13 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 	if (!cls_session)
 		goto remove_host;
 	session = cls_session->dd_data;
-	tcp_sw_host = iscsi_host_priv(shost);
-	tcp_sw_host->session = session;
 
 	if (iscsi_tcp_r2tpool_alloc(session))
 		goto remove_session;
+
+	/* We are now fully setup so expose the session to sysfs. */
+	tcp_sw_host = iscsi_host_priv(shost);
+	tcp_sw_host->session = session;
 	return cls_session;
 
 remove_session:
-- 
2.39.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230131145946.1249850-8-sashal%40kernel.org.
