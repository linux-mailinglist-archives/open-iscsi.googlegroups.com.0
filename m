Return-Path: <open-iscsi+bncBDTZTRGMXIFBBTW24SPAMGQEDGMQF3Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8F468305C
	for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 16:01:36 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id bx20-20020a05651c199400b002905fdb439esf1433012ljb.23
        for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 07:01:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675177296; cv=pass;
        d=google.com; s=arc-20160816;
        b=qaAVO7YvWNS4qMH7fO4pdedvVjQecseCy0/pdF9HY8r6P4ntG2pvXtcVKtsGh2dIsD
         N6Uz5DhE2q7//bysMuvxLrjKEbysrvkhOpgo3zokcTEcSblA9BLckq8nZbvCYHCqyPd5
         92MUofYyvcyqoiRFPPfO0eblyj2ecVoI2r7uH6VN8P0lHlwmVUXLAlEpPMaf4TSjvUSZ
         PVBc6Wrr0d3fXO2D0D6N6grWURkmeDytlu5WndByVH8OkkWgz+gBlTjwzaqCsxzlLCMR
         J4AmR79EhQsKhc4AqKGLVChySXRkileuaV27iaRwq9Uv19RHW54KuyV4IGMJjvkX7+Ri
         8KZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=VLUaxvrjgFz6HBLfWm/uezrW3dqPBxJoVPzJ+hzT12Y=;
        b=YKQU5h6uvtUOWFaf+Zhjy7aSGOaIR1Jao1E0XGtl8xCovVcOjftGVJuDAUQHyuseCX
         ngbBSdtNhCT+ZHP6wMBagHhMMvcam/Waq4FJHqRgbcA6x0SUdaxOE9jZ37j1X7iWWmS6
         5sW/q4dAv/nuousztFxyZ0u91D4Z5mR4iEgBdczvjjzXc1z04Xi/tm/ItYeEIg4EuQGv
         7nFbfFOB0m5j9JmMNQ0alqEbda1aCLXFkvMrkCArvF8FH4xvqK6mJpRDSUOWERY0QulR
         V6u7Iyxs1nPgRvV5Yxlbhed1IkKKtZGzflGtEb6mSzt/CWO3uoS81HLKiiEcERzoTTtg
         pdPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mthMomAg;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VLUaxvrjgFz6HBLfWm/uezrW3dqPBxJoVPzJ+hzT12Y=;
        b=UHjsxVrkTS5w16513Sf9HCG1Fjf4+sWgOIR7fHiR+uNu3dQ0O6TJQwNKPcSQss8x1D
         WErirm3KDdUt3uObUBhB7T8cQmpghRTi4cwThiDjwwCk9azBkCPflRah6WXTtL5OXxeV
         pA+PCbCDkdMd51A4BtTFlbyYZweY+jpToUoEs/XCz7QQxYeGvuDnP7ErUaYmp0qiYJ/h
         igpGcYdt4+EROgBqzcEpJwhF94WjBlhM298Lai0o1TZbhyiR1rnnDUmst321BiCwmf3x
         UysQVXhcMNlSWZqWxQtAwe2P/V+OgshvXJv643Ss4Dmg4XxrUh0pSnt+yssOEKhx3EQw
         ugyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VLUaxvrjgFz6HBLfWm/uezrW3dqPBxJoVPzJ+hzT12Y=;
        b=7QzVroi1AgMyuyXaW/j957YrgNjC7rKMtr+JNtiLBzDI481LvelG6mK4BRTDJLgwLE
         4/kgnsyvKTIpfrhDDl+PillyJtpsPxbNCUaVUOu6/HqTphP5RJG/wMhRLW7t9oEZJhIY
         lysgiYmrVlSa58o1995YPDVSgb0/17T7R4rXrNnyGHP2/I1DEVXmZprxCeuE62iRTVnm
         yi2OBzS/OEjy0xqa09W/PDuzKPkhEGp0u5vYRYtT+X7DtjmxrPYcr5FXrK5TIi9qrsiL
         8rAoiI0ueWwCBs5+c3k1eK5qcZ4ZfHQb7eBnL4zh820qdWWcbthrniTavnyANXftka81
         uthQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKXCpig9HfTTZosvYYTvfS2wgbDnYWWRyAvuA9mGQSJ88RD3LkZX
	1tukaLn8RTIf1oGDv21eRnM=
X-Google-Smtp-Source: AK7set91+3TirMWsQJsGvKa2U1+97hRliivwEvj07SmxCvd2h6/B78r24xPq+VbrPC//jJsfaSfQ8Q==
X-Received: by 2002:a05:651c:1203:b0:290:641c:2202 with SMTP id i3-20020a05651c120300b00290641c2202mr1104696lja.148.1675177296197;
        Tue, 31 Jan 2023 07:01:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:b603:0:b0:28b:d53d:2e29 with SMTP id r3-20020a2eb603000000b0028bd53d2e29ls2169777ljn.2.-pod-prod-gmail;
 Tue, 31 Jan 2023 07:01:33 -0800 (PST)
X-Received: by 2002:a2e:b5cb:0:b0:28e:da11:6191 with SMTP id g11-20020a2eb5cb000000b0028eda116191mr930162ljn.22.1675177293109;
        Tue, 31 Jan 2023 07:01:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675177293; cv=none;
        d=google.com; s=arc-20160816;
        b=RUOUKN580DHLzk48iG+eYjl9HFCB6nrjfhQ0l6Z8RuSKqLt41s03H70qMBfvOONXVF
         eMZmfBHGCJcttwU/Q9TDdlbe4sBYrKBMfBuxnOm4elh+XKJi3SlYA0u0BFQIwA+u9IsJ
         Cra7fCTBtXFq7fwz8fmrG2D5UNiga2OiE71oCwppsAOAZmVgMYX4YeOMDlIj9vKJim5t
         +Dx3f9Jx1doUw7CsBYlzw5XyyfFlbroiSCImFwqv5KJ3W5OgQjdTNV4Ril3byLMNrAVb
         gVg6+ybZkdKcpeo6YZPzf9rwbJjtXcLcqKo1NBu3E3OvBWgJe6AJjzbI7j3LTEKr+KBr
         KlMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6scS6s1NNgOVTxw32mNesf07nQ/kouKnBiAIMq/gDRA=;
        b=wo7XOIscJiiAMug/7sPGj5Xdx0kM9VePiC+juwso0F6KMMJuL7EoHdvNMNy38Dr7rZ
         0Og4nybqXobim6S8bh299kAzhvRkHD+iU8cvUGNuGFLMRxuPpGDUPqnY+LPWrZxcNl9S
         WxgqGmP5XGKT1yCIRe0VVwZtAf+AjHuoGTTl/nJDA+KnT4YAtpvnNBF0lN1tPL+QBR/G
         rl7D9b54XBv6CMpS5x4ZzZpWmu7Cf+CqYARef6FT8OVewGIF4OLSMqCozXScrcH/Ip+D
         833k5w98da2yZjzgWLGrb4YwAh6uI3WsQmCP6QIGpWUGfDKeRf+5iMupCjwxdkA/k//c
         y4Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mthMomAg;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id h13-20020a2e530d000000b00286e157db47si741093ljb.6.2023.01.31.07.01.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Jan 2023 07:01:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A6E3BB81D24;
	Tue, 31 Jan 2023 15:01:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45C58C433D2;
	Tue, 31 Jan 2023 15:01:29 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 2/3] scsi: iscsi_tcp: Fix UAF during login when accessing the shost ipaddress
Date: Tue, 31 Jan 2023 10:01:25 -0500
Message-Id: <20230131150126.1250471-2-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131150126.1250471-1-sashal@kernel.org>
References: <20230131150126.1250471-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mthMomAg;       spf=pass
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
index e3ca16043f9a..9161fe8fba88 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -773,7 +773,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 				       enum iscsi_host_param param, char *buf)
 {
 	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
-	struct iscsi_session *session = tcp_sw_host->session;
+	struct iscsi_session *session;
 	struct iscsi_conn *conn;
 	struct iscsi_tcp_conn *tcp_conn;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn;
@@ -782,6 +782,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 
 	switch (param) {
 	case ISCSI_HOST_PARAM_IPADDRESS:
+		session = tcp_sw_host->session;
 		if (!session)
 			return -ENOTCONN;
 
@@ -870,12 +871,14 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230131150126.1250471-2-sashal%40kernel.org.
