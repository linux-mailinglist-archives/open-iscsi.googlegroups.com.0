Return-Path: <open-iscsi+bncBDTZTRGMXIFBBHO24SPAMGQECKMVVPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2345D683040
	for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 16:00:48 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id a20-20020ac25214000000b004b57756f937sf7003776lfl.3
        for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 07:00:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675177247; cv=pass;
        d=google.com; s=arc-20160816;
        b=imfhdE6OulyftqM9PGbKhIi/4rQMytc0Gtua22+blxD1UR00ArxX0YC67NLzf/H+Ag
         VEz+0pd7D3gX2zssKT4YiXTZZusj1aga1BQ1E00Y6Y6Z1hiRLy5xkXHch3wKyNBPSjHj
         jUlRhXy5tAUBWhnm8fNT7HxLd8gozLNptquqHSNzB9zLIEbePxOsaQgJ184SBypyGX0I
         K+Ulp+C5gt4gl2NF1avSRpt8oJUHdkyJczJ0BEG1OZY7ihndjJqjpIaXlN0BamCgffAr
         DSdQcWIZdhe3a0R+JRFNe+jLxsrG4F24iSQAkyRsKngmtoJmmbpvJsZ54GAoF9Eh66qu
         QMPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=KkXV5ckkFVFSc0DPVBSSaNAGKahb9TpHXaJJBooqFqY=;
        b=Yq0VogzB2VhpDW4nE0pKeepN9IZomhSu/6x3v1ykUkdh2XUDkxGcMUUDkExsTP9Dhi
         q3z9s8nH6RMzc+aW4d9WHo3rNZZuVtLHWAp6+u2deE90cY6sBShjjsOVRk8g7wB4/lcZ
         vI8dnQz1RuYmt8NkcSdExrhBordqX7u6WzN2qrt1eZncUJnQDs47yNVd2rV9J61Hp3V6
         Gq0NBSkxG3yRr+mVvjHjeWM37Pud/7PxZyU0XrpGmTpNDNGpgXniCTzbsTfDjpPxSLeP
         sqnBRiTG/G5eO+jsNBqIqeJKEy4kYD7LDTKSgO8VFoXRcZo1Pr7UCfEcA0RwYfA7ii8Q
         lE9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="TJupM/zE";
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KkXV5ckkFVFSc0DPVBSSaNAGKahb9TpHXaJJBooqFqY=;
        b=WbBD60u44nMJUCAPr2yD388EmrQl4Q4sPrFtEPhBZe+O6RWL/9oSFe3fiAbRBpl7zd
         PCmrXlHp+p9+Nw8Ew8sz3tWRgNW1FYPRRnKpNGmX5drOmCdVv1f0AMm67t6dHpjnmEUs
         LwygVKzZ9utqZSIHtdF0uFysl9+492arHV1tpz0nAcG6ZVbu+BPGxUXMcie6Qr0N+r5S
         SrE/QOtWGWLXIj6HDBGXTUfPEw+wAg7W6zKs2RDVJtwhRE1UwmkkBsqIM06leuFFVvzG
         /T5ORCeJzGR7FjC5vcMaF7sLhi8sufUK4oGXMawbQzqfi5EzjEgBYB+CbLCfIGzujJXy
         qz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KkXV5ckkFVFSc0DPVBSSaNAGKahb9TpHXaJJBooqFqY=;
        b=v3uCrjk/ibtPtnTqoIfoCErK/0ufjx9GIj25540JKUA8oi/loH/kORLO0lDeIUgDSW
         OM7B8YTQdYO69aqVx2ssxPVyDyVnivXln19YXffM2kvvOMrBAxTHKrH+WaDE86SrC9j3
         F5yVmo8P2laBVEeSz7bGvPFNHOsS99oiEsCCNiAHdvVYcw2AHvPrDyzRISh/Wk9ga1nN
         Uj0mmJddKhvm0kMh+N/SJ3th5xai2wOAq6LYKx8eOwE6l/juiRlzMaelJLPTMtl6LaJ/
         VwElUjd+WmOBZWGZTbY7e9E4WDt9Zp3rT8xNdjnomT94wJt4oTcCBebqo/h+IuYZbnuk
         Q/9A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2kpB7cVBDRj2I9dSkKc/FTO9+HmaHXoh7QyY7fEyMLtmXU+jTzN8
	fJuPEUT5VT6GZBc09qICHmo=
X-Google-Smtp-Source: AMrXdXtVl0vOZMFHXCKXkOUjyZG4H5JLcj18pZ7l6HUFQwsPMottPbphKWmn077EmyXPbrcCq8Nc5w==
X-Received: by 2002:ac2:4acd:0:b0:4ce:e95c:f302 with SMTP id m13-20020ac24acd000000b004cee95cf302mr4280565lfp.108.1675177247266;
        Tue, 31 Jan 2023 07:00:47 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:4891:0:b0:4d1:8575:2d31 with SMTP id x17-20020ac24891000000b004d185752d31ls433668lfc.0.-pod-prod-gmail;
 Tue, 31 Jan 2023 07:00:43 -0800 (PST)
X-Received: by 2002:a05:6512:3410:b0:4cd:47e:47a8 with SMTP id i16-20020a056512341000b004cd047e47a8mr14572494lfr.54.1675177243671;
        Tue, 31 Jan 2023 07:00:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675177243; cv=none;
        d=google.com; s=arc-20160816;
        b=M3AaxeMXSy3Sl/2DlpugIX8GKS6Cc0vEhHu+1sFJvieSP09uSvHfDM9+sOQCTFbjop
         EWK6L2jw6Gjij4NMQHXAtk1RVZfeCaSgNl1/LO7FJmhJEcD8TDkF3R74w0Yndcrd9WOX
         0FmNA1gmoLqMagTS5e7Ol09hw6PKYyapAmDUBvXYyfJlkH8tZnmb9ul/GXBX2ZAVBn9I
         XqT/qi+Va9qsjcKN4J3D8SSJN9UmwkBspxzrKd38u6YehliSG9eN4a7wOy3U/KPfFGZD
         ASAkEHxdiw6B0wUOwcumaiA1/d26NwNhByk4yyPrhkkth0LUZ8k8uPpTrJERM6g+EKFE
         xKng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z1pM+jtEQOGZ15v9zgRo/DIp722Pw18Xzv8Ot7jIfNg=;
        b=lfcdhE92v3WJmf0kRhTx67kZqEmsgt5gsiwtIj2zilVRFH2BZ9Oz0WbQMs6phOud3t
         e2DdDHpGSM/xhLrrai4lbcNOZIcapSRZLfnw9vAJ4Q4uvK5f4QXe6g+Sf4cPefRrIbjk
         fdHb24RkvvD6l4ty33LYp8py3nOiMd8MoNnCJXKlJHJ/TQ9z85qYb51PhaKe3pP7fnwl
         PLKs1SBLpRtbPPLu2CygmTZNnzCx4qicw7e4QT2mNdakrSPSDTWugS61p3Gdh+orl0aj
         BHXuBYZWiTwqnuX9f6kcTwFSV2c71DkeVFfNMmUZfu9E+5AoTbg/nsbDP3rgK+eYnaCt
         1j9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="TJupM/zE";
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id f17-20020a2ea0d1000000b0028b731e8e20si836177ljm.1.2023.01.31.07.00.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Jan 2023 07:00:43 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 29765B81D51;
	Tue, 31 Jan 2023 15:00:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3134C433A0;
	Tue, 31 Jan 2023 15:00:41 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.15 06/12] scsi: iscsi_tcp: Fix UAF during login when accessing the shost ipaddress
Date: Tue, 31 Jan 2023 10:00:24 -0500
Message-Id: <20230131150030.1250104-6-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131150030.1250104-1-sashal@kernel.org>
References: <20230131150030.1250104-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="TJupM/zE";       spf=pass
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
index 5c19e75c0e2f..594336004190 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230131150030.1250104-6-sashal%40kernel.org.
