Return-Path: <open-iscsi+bncBDTZTRGMXIFBBRW24SPAMGQEMX7GRZY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9B168305B
	for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 16:01:29 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id o7-20020a05651c050700b0029066aa85aesf1318771ljp.12
        for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 07:01:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675177289; cv=pass;
        d=google.com; s=arc-20160816;
        b=R+OjEfCdKg4RDlmKOrkyO7GjJaWbNk372Or9XH+3hbvZc7cZilIDnH1xMEF2vUDh2h
         MfSoIKJBEBNapsjUGrS+Zt+kLtQvivQCNyOcIvTlfu/sCSpcX/nxuwLtnC/KYqsIctDA
         kONxDPLkpmSj8QfXVBep5c66QsW9k9FUiwP4EZOHyy9H2pAnyoX/ZaH6XFZIu8bVg/cp
         quemBI02gCiW7iJ5SKeEeVK8YGKw3/rMJ8LEtix9ZacjWI3/C1Cv4NSLL+3LCyLLbAoo
         fhPPLnhzq5yGfhw9zggLpMWY3nBe0LLw3zOliL6XK7LD+2qM8BLYE9Rt5SPqQZRA+43G
         CKhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ymewM6VC19g1LrYl7JCWLV4YjTm/ahmgDniM4tkuP2s=;
        b=AL2bRDdhW5z7PQ/ixMINlcSSfn0KSRfXsM29M5fc1Db/4rq9YV1OexgGvSeCoBbr1z
         5AXx2/VWUom+7nPx11yLwWuTlXOgv1SxVXWiQ/JRIgK4gljKN6oAsmx8Scnd5FUxHJgE
         cCK0pCyJQlTumGUHpX8Uhaoh8jKyxIW0Nh8SY+q1YwIbCDbYI82kPL3AhYjtmtq5BhUM
         Dq4M63KgCssTwWTqGJ+LWGwpg+HSmHIyMjWjt/wep3rkUoNzsRckMiiJzNzrW6HXK7Ly
         DZ3RisoGfXJIO+z6Pp30DRW3132e9vuRZOUw5OOg3i9bEtDxUqltV0oBsPQuYrzwpjMW
         wMsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ctteDJZr;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ymewM6VC19g1LrYl7JCWLV4YjTm/ahmgDniM4tkuP2s=;
        b=JGEDhynNrg+Gjc7vObgwQjW7LBS8vZZpvjTsOuELRJVF5d4G36X9IGiJKsgkDo0LAo
         ixb1OcFXcEwp2zH6z6q8FMU2AlJIZpOr8sz07zdcNaoPySyXsCrP4SzWomIDTfeChjMR
         mBsN/P77sTGf6W9f614T/GtS9TZqcykhdHc1PsE6RPY8ayI1JaIlyE24HkjDuzUkSuN9
         HR1MN6TnbtifIde9AG/l4N0cg0Ia/ATtnSlMXHGNas1Cw/ECpFpCllghQaJttBMi3B1Q
         3Co7jOo9nBNylP0fNiUA9V8TZCH+20hck8XKQchDvSzGkOH/Xj/Tkx0zMZhRfo4nxUoA
         ONtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ymewM6VC19g1LrYl7JCWLV4YjTm/ahmgDniM4tkuP2s=;
        b=dtWB2MzWL9mZ0wlku/4btteki6P6UrPZYJhMpfR3MnDFbQSCqjHHXPcRVN4+hk8fgX
         UU9Gr20cOV4PhlfRvGV4yEkPeEaPbWIPjYoFCKWdLFeayUOakvrmgAj+Y0mCM8CBKmx1
         IjtJCh83t1+SgqwusAixxBsDVr/uk1dN1S8WiL+T1eHks9GIZ9dkBbRdLFVEuHlXRAh5
         XgmGlfsxIumVNx4InrSKc28FmrH88HO5fPI01I/H452lKqeRnkq783DGB8bamOsL8v4L
         oJRVlrU+pJhjSAJorDJHTdxHnsbKkEx9UTAD6Dm6GzcKtGIJTi6eqwcZhTz1Sptn/BtG
         AFBw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKWp6ZMjW53ayR/ycVmdGbpOvmhPUyRnHKHGEeO5+nQUtdOofqdt
	DAzPS+gtK8Jgj7c6sUi1tBw=
X-Google-Smtp-Source: AK7set9ubJjlNuS/9KBwXV+MV2fbteqVmLLwX/9LW/xc0/w2lGLyfPkqoDqEgFBcSTfIGwLcwgGYhw==
X-Received: by 2002:a2e:8e95:0:b0:290:6675:ec07 with SMTP id z21-20020a2e8e95000000b002906675ec07mr954110ljk.46.1675177288744;
        Tue, 31 Jan 2023 07:01:28 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6512:1146:b0:4cf:ff9f:bbfd with SMTP id
 m6-20020a056512114600b004cfff9fbbfdls439052lfg.1.-pod-prod-gmail; Tue, 31 Jan
 2023 07:01:25 -0800 (PST)
X-Received: by 2002:a05:6512:32d5:b0:4cb:90c:5719 with SMTP id f21-20020a05651232d500b004cb090c5719mr15318436lfg.31.1675177285132;
        Tue, 31 Jan 2023 07:01:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675177285; cv=none;
        d=google.com; s=arc-20160816;
        b=Nk/BwXKJ1H6WnfdlcVALoD1h9NpWH/sIHBYXJjnFBw6Wfa4vATA1VdhbYIRGEmFM9i
         lPAt89Lm04+yKVN/j1zCgmTp8+3xNKMzGGoFLyikZAUh0Y1PwBG+jmxwu/M7jTJy4kbC
         EC3eEWHd9xAlju5+yHR7Zqtz6PLhlJKp8VmYJ2hI/VsqFv4ypzD4QdbXGP2X8IfWp93m
         TNgpliUWFpDDJ5WIvVV2Ch5qIoq4GoIBlK95mVwiV/di7Y9pJ3nwXRq8fjtj6kcItMd7
         EhjH+x9OnHFc3Oh5Xs4qonOwjj6S9eatoVocaF11I1Bzo27bj8H7siPUp8ocs7iRcYT2
         RaHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WB2GEnd79gB85R6xziZGkVXUnIZMU/g2icBTZEIFG28=;
        b=s4iPHJgS7vEVo1oHY2SB8pKBgktIw0hesNdHqveHqWpR0GtOFxJRXmqNdVWIRP0uZS
         Jt2/8JYga4yVTlD3tOhrABf+uHDBCxYgGKTQd4fImwjtPCPzhhRYiSpQjtKEVVTe6djH
         ypKt0516YsNApAxS5XjlUolsqyWRAv5RdnFQhFLZHokCw3UFCRTN5mv+J229//pkbY24
         tB+kvpUiO+PBQkqVDxGHWoLtjntPyCTRuRwVCZuImKuHoOd1PNx1C7nvGsVSBkCEp4QI
         nwiCc9+FjWGrBo8GA8eBircG0soagCe9scAKXqRa7cWcBFK5X6aBLx7ps+cbgceda4RR
         suQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ctteDJZr;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id bt1-20020a056000080100b0024222ed1370si790597wrb.3.2023.01.31.07.01.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Jan 2023 07:01:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CC142B81D4E;
	Tue, 31 Jan 2023 15:01:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AACF6C433EF;
	Tue, 31 Jan 2023 15:01:21 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 2/4] scsi: iscsi_tcp: Fix UAF during login when accessing the shost ipaddress
Date: Tue, 31 Jan 2023 10:01:16 -0500
Message-Id: <20230131150118.1250409-2-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131150118.1250409-1-sashal@kernel.org>
References: <20230131150118.1250409-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ctteDJZr;       spf=pass
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
index 7212e3a13fe6..33fb111e2e19 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -775,7 +775,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 				       enum iscsi_host_param param, char *buf)
 {
 	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
-	struct iscsi_session *session = tcp_sw_host->session;
+	struct iscsi_session *session;
 	struct iscsi_conn *conn;
 	struct iscsi_tcp_conn *tcp_conn;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn;
@@ -784,6 +784,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 
 	switch (param) {
 	case ISCSI_HOST_PARAM_IPADDRESS:
+		session = tcp_sw_host->session;
 		if (!session)
 			return -ENOTCONN;
 
@@ -872,12 +873,14 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230131150118.1250409-2-sashal%40kernel.org.
