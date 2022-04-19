Return-Path: <open-iscsi+bncBDTZTRGMXIFBBCPX7OJAMGQE2GFFFYI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6B750774E
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:12:28 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id i196-20020a6287cd000000b0050ab83e42c0sf207223pfe.7
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:12:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650391947; cv=pass;
        d=google.com; s=arc-20160816;
        b=j4OepnpnkTR0bnYQshlZ78+0u9YBYfVps1rQmXSUsCsv9u4aU1sqXeztDgmF98paLP
         iVgMhw8pqVZhsSjqaEw/na88uu+TfzrrbAn6eC+NJGWx4f0MfK2X1yGfg/U0Np58/1gX
         yqziw4QstdjiejdPZyeb8uxitRYMx/3lTdL0h2Za4zWchq3bYIAT3DmDur39e4KBbJvX
         BgFgF3jHxRDp7Pjj17WN8J+xc5HsRTN/WXTpsvqcE8ONMIFV0wo4Triq0H0qwpAqoxTR
         kLOI4VmPAVNXRRprRnVA0uSJDOOTZll5Ouj5Oewby7db4sq1Uh8KmNaijaNAkRJJaFG6
         kYHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ebSaQd1X/7Q3GcMwkJ+tmjx9/whZqYKeM+SKeRzUhjY=;
        b=qqsScfrnpBTHX6RlVJt93YnXolyFnjIe3Gn/mX7IGADCBwfBdXtrt+16x40csM8K/h
         g3l5LVLm0v0CqwHIAI1eO7ls3R2PEjMo8g1eDJjrxW3r+Js07x4Ghl7zo/Qg805Idz5O
         yZy1fU1yPomxeErsxF2cFWr38wFrOZhyRpsP3qhPLOC0sEXyKzZtjhbJI/unzamBN6Cg
         MBjYMgVNfJ1K7xSKuwcaneCsKPbqmzSApDvvftEdr1iwBf41ofaUf74rL8MEp+i3Ypyd
         rnYsqTReGSRDs9gp7ToFaIyFC1r+EkAfOBYcoGcah8pdN2x1nkOpN7QOZmOgup61t1dL
         NpMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="RYD/KmOr";
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ebSaQd1X/7Q3GcMwkJ+tmjx9/whZqYKeM+SKeRzUhjY=;
        b=nsDgViprwhlVjEtOyP3ZaaviHv9d8a2y+sMoEyB481tsQBKAGjibCrsvvDyeRNLdAq
         1KaeLf7U7yOQZ8dDhKPfEWtTk5vn2CJgNVb/gMIpnKSyswQwvH+SKHySbmZZGAmJZcEz
         E2p/jPWsB+bTpYh2TyI7sFcUZbE+EnOwlHogH3QJxuADj01cYvQvb7HvBnZhBYYZqBRL
         dMliroy53NL1uaDl0AcFAVqsmxBNVkKZoIFT2RyOnY3x02W7ytctxLOF0XNASDkCOfNp
         aV9pn5o8/9z5PqAmeaIoU9olPGtfIMMicBWPD4sfrtR3EIbzh/XnLubWOannshFxx0Ru
         jAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ebSaQd1X/7Q3GcMwkJ+tmjx9/whZqYKeM+SKeRzUhjY=;
        b=rTMf1k4rjI4FfbHbcxEepH8hzQ2sjFH87XiPpt0HLA8ebRPEMFLuR+Q+eieWgEzhWF
         sSsUIIBRWdtWveS9qrR2F0ca42mpU8nrWbxgSJEv4jYEQEp+FcFILoZsK5151XFMIi2P
         IvLkryn8NzVFXkuxtzWwJntlvoR47QOMDT97a51tRD11BsS5cHcE4xBmQoeInPzPFsYZ
         ifsOLXcozSPuOkMlu20Aw3aBjH0+rTp6+XxpvJs5ofMOPVPyMWcIxMDbceHFmH9sSZUi
         5SHJSaEXowGEKARF4+OH+o3p102s7xIy5FIDL6Qc+gi3RLMToQwF3jqXcasZWKcrnhjR
         lajw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5316W16hHehxOL2G9OqlpZryHYFtVA8IvjyWqrMUlqFBbM+Oj/8O
	qpE5KbW0CTf+y3ZVFgsMYvY=
X-Google-Smtp-Source: ABdhPJw4f77IPHV6vg5HFqN/VsT7hNPx6jOwzTBlHA+GtCEamK+Zu1fMO1OPUlq1kPUR8zRaxZkdhg==
X-Received: by 2002:a17:903:124a:b0:154:c7a4:9375 with SMTP id u10-20020a170903124a00b00154c7a49375mr16918778plh.0.1650391947110;
        Tue, 19 Apr 2022 11:12:27 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:2b08:0:b0:39d:a8be:b1cb with SMTP id r8-20020a632b08000000b0039da8beb1cbls10329820pgr.10.gmail;
 Tue, 19 Apr 2022 11:12:25 -0700 (PDT)
X-Received: by 2002:a65:6b92:0:b0:39c:c97b:1b57 with SMTP id d18-20020a656b92000000b0039cc97b1b57mr16178788pgw.517.1650391945158;
        Tue, 19 Apr 2022 11:12:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650391945; cv=none;
        d=google.com; s=arc-20160816;
        b=E1DRs/b+IsoxaCry73KlYog3MNiZ0+MVEY1+CXB+lf2bjTrtf3uo07/S6JkqoUFH8R
         1BbSUIo0FqYNOGr5G/ee5A8y+MTSyVU/1chTc23q35KI0myj59JIpUQ+88RQXoiu39M3
         Qgt9KzNMVfTd/viSMS5NddTwdlyfhrIPynGkOLmKL+hu8G/UrjwsVdzRVWQvEvjov29k
         GWgLCRyR18yTnTX2rfEKm+QeuQ56/Nkb3dUp3QbZb3VsQbMDPV3FiN7x9iH2Ostl41H+
         05007bDRpp55kXuE6b5BFhTitZf1wRKQEKVEqRQXzHMCDTPeBUnCDeMxketki469lVex
         6AKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5h3QN4TW8p+C2/Gsg+Lu76kki3wiMndXWR7lbr+O0qU=;
        b=kBO/F5FDosmc9Bc/1mQ5QVTI8DnVrvnPwv72+3Yn+INvuJNi15YaEO9iDUmVvhzTrU
         iN3698AoMykR/+44Rhbjn+Gbto52VQ7N8kYjEKjY3q3S+AxUQjNzIf40T/LcByD6bTtq
         U8+me1xaZ2TgCkyBiry3FmZe2qRYTyI0wNBOGBFsg07xT9yTTvr+iZdalsGId1iHSQMX
         ZsV5MFM4lMnvP2hX+zHSfEkxDkpcSwRCxG3OA4RGFS6nIucyc30bwSXZhKmeLxsKa8hU
         gwpRmJRlMy2AjeUqdndAxO0E9ywONSe1npuCa2uEBLOTrHKyHhQNbTIhwTA05c7n/Be/
         hWcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="RYD/KmOr";
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id p4-20020a170903248400b00157192fc8c6si7419plw.0.2022.04.19.11.12.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:12:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A850460A73;
	Tue, 19 Apr 2022 18:12:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD5F2C385AF;
	Tue, 19 Apr 2022 18:12:22 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.17 26/34] scsi: iscsi: Fix NOP handling during conn recovery
Date: Tue, 19 Apr 2022 14:10:53 -0400
Message-Id: <20220419181104.484667-26-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181104.484667-1-sashal@kernel.org>
References: <20220419181104.484667-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="RYD/KmOr";       spf=pass
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

[ Upstream commit 44ac97109e42f87b1a34954704b81b6c8eca80c4 ]

If a offload driver doesn't use the xmit workqueue, then when we are doing
ep_disconnect libiscsi can still inject PDUs to the driver. This adds a
check for if the connection is bound before trying to inject PDUs.

Link: https://lore.kernel.org/r/20220408001314.5014-9-michael.christie@oracle.com
Tested-by: Manish Rangankar <mrangankar@marvell.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Chris Leech <cleech@redhat.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 7 ++++++-
 include/scsi/libiscsi.h | 2 +-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 073c4db79094..f228d991038a 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -678,7 +678,8 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 	struct iscsi_task *task;
 	itt_t itt;
 
-	if (session->state == ISCSI_STATE_TERMINATE)
+	if (session->state == ISCSI_STATE_TERMINATE ||
+	    !test_bit(ISCSI_CONN_FLAG_BOUND, &conn->flags))
 		return NULL;
 
 	if (opcode == ISCSI_OP_LOGIN || opcode == ISCSI_OP_TEXT) {
@@ -2214,6 +2215,8 @@ void iscsi_conn_unbind(struct iscsi_cls_conn *cls_conn, bool is_active)
 	iscsi_suspend_tx(conn);
 
 	spin_lock_bh(&session->frwd_lock);
+	clear_bit(ISCSI_CONN_FLAG_BOUND, &conn->flags);
+
 	if (!is_active) {
 		/*
 		 * if logout timed out before userspace could even send a PDU
@@ -3311,6 +3314,8 @@ int iscsi_conn_bind(struct iscsi_cls_session *cls_session,
 	spin_lock_bh(&session->frwd_lock);
 	if (is_leading)
 		session->leadconn = conn;
+
+	set_bit(ISCSI_CONN_FLAG_BOUND, &conn->flags);
 	spin_unlock_bh(&session->frwd_lock);
 
 	/*
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index bdb0ae11682d..d1e282f0d6f1 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -55,7 +55,7 @@ enum {
 /* Connection flags */
 #define ISCSI_CONN_FLAG_SUSPEND_TX	BIT(0)
 #define ISCSI_CONN_FLAG_SUSPEND_RX	BIT(1)
-
+#define ISCSI_CONN_FLAG_BOUND		BIT(2)
 
 #define ISCSI_ITT_MASK			0x1fff
 #define ISCSI_TOTAL_CMDS_MAX		4096
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181104.484667-26-sashal%40kernel.org.
