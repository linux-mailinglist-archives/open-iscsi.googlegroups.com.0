Return-Path: <open-iscsi+bncBDTZTRGMXIFBBPW24SPAMGQECF5E6CA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 43780683058
	for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 16:01:20 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id k12-20020a5d6d4c000000b002bff57fc7fcsf968148wri.19
        for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 07:01:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675177280; cv=pass;
        d=google.com; s=arc-20160816;
        b=wuO3aQx4BIt3e4Cg7gWCFde8xUG6LkU8h/9oxDF9Q1sszaZeRHN7li6q8iGNwOTlrG
         sNKhJJNZ2Rpbre12wbsQNRUqoltkZLUyNDfZorn9hWQNjbTVdijUDOR7pRmT2LGl9kze
         tqbmZWOVu4wihMZ74QZEHb+ARG5nVcloApG0IXd88G7GrBi0VOiLu5D7LtmHprjheMwZ
         jqfNAVQaaJDEMts1dXjMU0sorYPuW8HAsHvwTBDnzI7VJKIgieXFSLgCN7+ViwZUbpmX
         IPJSLQMn5a/NcawuMCSA+gP1WKOQnU9wwleBQuxBNUW73r+sOU+WjyY6NqB9xA20wP8Z
         ai7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=wHRgknhhKDJAeYGx2XRoSNj21Uf7FVcRYspgRyat1WY=;
        b=zpb5vgoPlkKFJhBtB/2D5wWmjYXboNgSczMLofgMUr41TYG6P6vPIyNZaPqxGgziDt
         qZ9deuAJHCLcpVKFowA4qG2bHcEtK6KfxRwpWgqHMgxxab1krpAXdW7h6zbJFSlWWxy5
         o4ETEuaAAnNQ2+1xrCdmVT6RHNrHozlg6AUMS8QrzL8Jz+e7dfp9Ny/ALHz5Y2JKtLMO
         LeJX0PRYFuArxZVC4FT8Mk1i1ILjVbwhET/Ifzb2DPhgLs6zLrc8M/CEZcLJ6Om9HRf/
         qlCNMNNka+kLaGO/BgtIdnwBOaDkDKY1T2leO34lND7P8oCni/+hpX193qQF8suMlrKK
         Cgsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=X6tf0Ypf;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wHRgknhhKDJAeYGx2XRoSNj21Uf7FVcRYspgRyat1WY=;
        b=aIt9euEgXHOYSDUfz2QvXUFb23eytC12MMzMwrTCnZiSJschUARVtQldOneegvSxS1
         Po0X9KwGXV8dlSRL1ydhjaMMyn2HX0g+gVCobVhxokmAbhHj+rhxXtbb+ysf2mlAFuQA
         XbOaMdpp23pEIlAMc3LrvyOgcV9epOAhDf3AzQE8gj4I508ee514S2t8fGkl0h+csFwD
         VvWX4xAU8DlJ8uav0OhSwGrzdCingiK9EvtCOh3jFLzo8dOouzi+dtnyXXE/YKEsZ8sD
         aS6F3eb6oI9IkOwXxGX/47g8DhT1GIpRk5FyY60j4Xlk/S2vI2DR10VtWYVG6W0Hu+Fp
         KliA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wHRgknhhKDJAeYGx2XRoSNj21Uf7FVcRYspgRyat1WY=;
        b=A63kozUXzhHg+ZMM9x1r0ttctU7n3pYy4XJ9VgL+3WEqP39D8HOj0iaOfksM4/o6Bz
         1SjNaVXgQrL04sImuiQIyViPD1lASzLBTOm3wr66nxiHSQT2O+tFnLCglRaDSO4joNXf
         o5t2EnNTVk1r2fKkS34w/uEK+zGzzQkUQVDqiEamgP9mCjOQgKKCPwS6tVxwz12A23Or
         ga1fjAIvyCKuUwP8drTxh7msTrPH1RFrdo9NflbLOPOadWkUorv764cn0jAa63WQWB1M
         zexUxhr00DA7E6niQ3uTCMzBVOcxdRj+nedJWHPOJQWMfmFeyyGZR/I+VMW27wzU4TNz
         Qd4w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2koa1RYnDvubd4ErqOr3RRplDJqhGG3K9m54RqtjY9QTn9hGKF3t
	q/qzq39tCYc6KdvJOBitm9c=
X-Google-Smtp-Source: AMrXdXsbkIC1o5iZVX99vzmpOS+IH2kIBIycz3N8x49XN+d62qkBN1lzzrl0TZCHrwsjABvwXqZjEg==
X-Received: by 2002:a05:600c:1d25:b0:3da:fa8a:8511 with SMTP id l37-20020a05600c1d2500b003dafa8a8511mr3161606wms.185.1675177279843;
        Tue, 31 Jan 2023 07:01:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:600c:1c20:b0:3dc:4bb4:7c6b with SMTP id
 j32-20020a05600c1c2000b003dc4bb47c6bls4719589wms.1.-pod-canary-gmail; Tue, 31
 Jan 2023 07:01:16 -0800 (PST)
X-Received: by 2002:a05:600c:524a:b0:3dc:3398:cf87 with SMTP id fc10-20020a05600c524a00b003dc3398cf87mr17428823wmb.11.1675177276744;
        Tue, 31 Jan 2023 07:01:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675177276; cv=none;
        d=google.com; s=arc-20160816;
        b=LgMv8KNdnYafMkMthg/VTJvRuq3AFmyTKK4ZhRbWoFm4dbK6rlc6l25YcTv9hOhr3y
         5pHiRiqUDox8Inc670oby40MNoHLVMuN3JBQEJmE7UdSpnqG3yub9ouKQ2XrJi+7st6y
         Qv0fc3zhDF+ecFLdCYxPHE7TTvoTt6BRZ3TzMCSoAkanxWEsgRuxP1h4g0R3nBQJzQhi
         uFK4h0szQpWSAcrfgES8YkgazVkuXyuKG17nvex4RsFYej8cUPqKbX1n/UaV3QX1bPVN
         RrFTJ+HM2FMKdiC4JpjQaT1Xk4RdZd7A/mF07e/7FkSOXL7eb+w7mVDqfZFnEh7drRiU
         M78A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vodEji9Hpr2E6mEfb059SgUiVhQItIC3tf359xTx5hQ=;
        b=kPh3zUIxXXC4RhdXDS3SSt8ZJF73YQgFEkZHKcRCS9gPb+EYKHw/4w/usr5kwDfbqx
         ACyrvbslSRDv3DbqTHU75zbxy0Mp5bq/dX0SlZRhpGFXz3orhnjiIS2Zd0C/64sJHoJb
         Gvm5tMt3QRJcuw+3TiPaBZjRW91fODy/oya1dJA9GqYVNA5bKdaD52yaoP4jS1HReFwi
         1iBt8Nic6PePgPaNiJVVu6rlYQSjCdFGhfqk8VRuS0yjyn5psJ9Kse9vba3VuhLQoZM/
         m82Javm1DLsUaolgelsLa+4qjocdugVJ7QBFncDFTe4Qim/DVnVHy19lU60j92n4TWcZ
         /TxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=X6tf0Ypf;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id p9-20020a05600c1d8900b003d9c73c820asi124186wms.3.2023.01.31.07.01.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Jan 2023 07:01:16 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4FAA4B81D4A;
	Tue, 31 Jan 2023 15:01:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA314C4339C;
	Tue, 31 Jan 2023 15:01:13 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 2/4] scsi: iscsi_tcp: Fix UAF during login when accessing the shost ipaddress
Date: Tue, 31 Jan 2023 10:01:08 -0500
Message-Id: <20230131150110.1250351-2-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131150110.1250351-1-sashal@kernel.org>
References: <20230131150110.1250351-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=X6tf0Ypf;       spf=pass
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
index b5dd1caae5e9..9320a0a92bb2 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -770,7 +770,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 				       enum iscsi_host_param param, char *buf)
 {
 	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
-	struct iscsi_session *session = tcp_sw_host->session;
+	struct iscsi_session *session;
 	struct iscsi_conn *conn;
 	struct iscsi_tcp_conn *tcp_conn;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn;
@@ -779,6 +779,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 
 	switch (param) {
 	case ISCSI_HOST_PARAM_IPADDRESS:
+		session = tcp_sw_host->session;
 		if (!session)
 			return -ENOTCONN;
 
@@ -867,12 +868,14 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 	if (!cls_session)
 		goto remove_host;
 	session = cls_session->dd_data;
-	tcp_sw_host = iscsi_host_priv(shost);
-	tcp_sw_host->session = session;
 
 	shost->can_queue = session->scsi_cmds_max;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230131150110.1250351-2-sashal%40kernel.org.
