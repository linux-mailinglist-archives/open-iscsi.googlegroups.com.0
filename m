Return-Path: <open-iscsi+bncBDTZTRGMXIFBBOO24SPAMGQEGQWJECI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3e.google.com (mail-oa1-x3e.google.com [IPv6:2001:4860:4864:20::3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2CF683057
	for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 16:01:16 +0100 (CET)
Received: by mail-oa1-x3e.google.com with SMTP id 586e51a60fabf-1631f1eb91asf5657615fac.18
        for <lists+open-iscsi@lfdr.de>; Tue, 31 Jan 2023 07:01:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675177275; cv=pass;
        d=google.com; s=arc-20160816;
        b=ByrpKTvRRRXmpuj6Hz5ORH1pI3aux6vRort1bdld0ms1wPn9Zd6CVv+igusMqOBVgK
         7oOgjaTBZw/X7ehj8dFSQUTeoOhOB07MxPWj4hjxZ+LGvtmtWfn51bKFzEjEqxqOT2Fl
         5UgSYFUEFDqqXWi6iZJ1LS1nAJ4UBQ71UOKzU9YZSUZXslFynlZlpyOiTnoTEz1iJqhZ
         QiE/C0+4QQIf7zT6o5EgWQa3RgGji5jeXTUplJ7+MKvtlbC1VaxoPT0om3YCzn3oZHyv
         aNpN3VKYm2g3rHB7iLR0aTS+Vb6pb7Ei86e3mqnyWRg0mzH5m4kQX3k7iughW+ObO6ON
         JyPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Qj8S2HkeR8Kjus8Ugt/1IJyZhG+I8MoROYGwJ3weIlw=;
        b=0grmKbqX6YXNypU1a3DxRAy9x1fMcYtgBHo9KsfZMHWjlReDIf7DatilaUlAXBxtV1
         Qq3/hl6RYvIOcfzMO8pneEDy+Yid5rATAFDnsWOoj9Da5yROZdO+Bjdm/mV/PxE7cFbO
         6Lmgg6HK+WjfT6et3GN3tiuItDQxoqrpVJZUdbgFaui56NYYvkTjKr/UuSfmTnkg7dA2
         LDWFSF+f8wX1VtpWzalB7RrKYwBxmICB+byvvJA2zlz98x04ZokGW5+1UZTCntNJDot9
         GO9tSeETLu99yQn8VM2rnIFu+obgMZkfXIOeHMXtMyvABRcN6cl7u2qHoqU+cUJMm7HP
         bVVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KGF0crNk;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qj8S2HkeR8Kjus8Ugt/1IJyZhG+I8MoROYGwJ3weIlw=;
        b=e8hL3Jv/IBk6XTgGBZEYt3KfwBlGErJ6zyvuAMbwCFYs8MM27fCWnmMSqwMetbjs6E
         UrU6P5q8sH+dnnLiQmbd+lzWGZhUn/4utjKPndmP0tch84npNLX3vZLPD0Y421UioHAP
         r6bbcpnKmIv64LH0YFH1VpKQJLd1poQjOYeZvk8ao1n5zGGYODf9e/GMr7D2AJ++SBi3
         lTON6lfk68RxxWMd4nUFWAkP89cvAIrMyR5MRFsEH6q/1BD8eDLG6AdkIOJvgsi44EhO
         yc4JQBvuDXrEqFQmz3lIG6jVL5hmlHYzPO7wJUs0DGnn6a+nllEcUehya4IvXVK47uzc
         qgIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qj8S2HkeR8Kjus8Ugt/1IJyZhG+I8MoROYGwJ3weIlw=;
        b=YBS2q8i3ehbYHafmFuEGabEyfRTYgtuKCRCxxUQyK4HDwufCrM5UvTSNgrtqV2qDD8
         t9xpTj4prxtT/fAHGOeaEqa+oYhd3ORHvZsLewHIfBmB2iRNj27dNGFzkI6ClU4UCmVF
         RIG1td+JDslTS1S7BZwDso5Th+17YpukNwebVrdQUAHC7qkybc/NUr2fEKGeHo8CgvJm
         S65ncdJE3f8SO3YzXjAFYJjJIPCJUu0R9qOPr6hautXs+XIeuUX8aehffviNXWOl5+Mo
         g5NWOnGVEcbgpjbMswZzivR3fPYBf8XWH2qu8pbnNCUYNhZ0tKMJ6XwlKbLXJas7EOaf
         ZgrA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AO0yUKVk4+Uo2pp8XdKvhuk4PsLUjeEn2JfBnNRnrhdiIcGmO8bMRo4V
	AOpkGHFcOpoPctzQILLqlvY=
X-Google-Smtp-Source: AK7set/kcLRhyzi+R+9BVER7vhdc0vLWk5HI/uCmWtDo70rb1VPt/HOQOizMlhn1IKYoMpPUTD24dQ==
X-Received: by 2002:a05:6870:a90f:b0:163:5fc4:48e with SMTP id eq15-20020a056870a90f00b001635fc4048emr1979285oab.40.1675177274947;
        Tue, 31 Jan 2023 07:01:14 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:2646:b0:68b:ce06:dc11 with SMTP id
 f6-20020a056830264600b0068bce06dc11ls895264otu.4.-pod-prod-gmail; Tue, 31 Jan
 2023 07:01:09 -0800 (PST)
X-Received: by 2002:a9d:384:0:b0:68b:c6c4:f665 with SMTP id f4-20020a9d0384000000b0068bc6c4f665mr6084217otf.16.1675177268590;
        Tue, 31 Jan 2023 07:01:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675177268; cv=none;
        d=google.com; s=arc-20160816;
        b=xlGBqbqvysBsnCzVNHN2ZKaKytMBpv0Ucj1XKGiswq/z3rxGA+skRylCBl7IA4vAF/
         eiWLJqiBQbhBu1de9j5gT5EKuT5YCTLH1GPlh8JFNUSVkfJk4C2H3En5jK0/fovs5LgR
         5h2STHoAkHuaYD0dhdFvlx+HZlnuteXmZDda+Dcva2Z0f3ou1B3K5uHhnmA69coEqGmI
         HuTniu5PTtJ9mxNaLZj64kIpKQydxtuKKrIGkZ8xCWgip4jyZwLYkyAT2xeGZE1ZGTzf
         3ZxKZWYsB+3GsUCLmCu9TEaXyxNXRoT2y1IzKNWmWYVmylAxzn4QHcnhN6RXhyo8C58w
         eKYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XviODtHQncYVsNdJXzCn00VaWl/TVBUl4NQ4K8LNIdY=;
        b=wrv0zd7BjJvGotkgnMEkvUOqNfNdseG0aBDx0cGAmlWm1EmavuvFdcyVjpBSN8Q1VZ
         enS7u2SIHx38hQDjIdaY9x2QimA+oA+fR+8q3eAvXALahd6Gi23fYf572G8V4BeAM1mm
         GfW1plJ3jliFtAclxNe5ORblOzPCOa5lB+m0+Z3MiHU34aUwFSeNJJPhtQ07BMuLqQgu
         4/SqIhLPkAS0Oo2Niz71mCf4RJTLqI704uH2VO2nLghyJjDOQncH8PegO3sogzEGxW7n
         Swgv7iqG8lnTjzv2LlIuv2zTTxh/Q4/5MMyn+XtBpZswvvsRS4FLnM19M8EVV3xpTtiq
         7WbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KGF0crNk;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id cd28-20020a056830621c00b0066e950b0580si1952498otb.4.2023.01.31.07.01.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Jan 2023 07:01:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BE2F461562;
	Tue, 31 Jan 2023 15:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13672C433D2;
	Tue, 31 Jan 2023 15:01:04 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.10 3/6] scsi: iscsi_tcp: Fix UAF during login when accessing the shost ipaddress
Date: Tue, 31 Jan 2023 10:00:55 -0500
Message-Id: <20230131150100.1250267-3-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131150100.1250267-1-sashal@kernel.org>
References: <20230131150100.1250267-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KGF0crNk;       spf=pass
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
index 6485c1aa9e74..252d7881f99c 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -802,7 +802,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 				       enum iscsi_host_param param, char *buf)
 {
 	struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(shost);
-	struct iscsi_session *session = tcp_sw_host->session;
+	struct iscsi_session *session;
 	struct iscsi_conn *conn;
 	struct iscsi_tcp_conn *tcp_conn;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn;
@@ -812,6 +812,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 
 	switch (param) {
 	case ISCSI_HOST_PARAM_IPADDRESS:
+		session = tcp_sw_host->session;
 		if (!session)
 			return -ENOTCONN;
 
@@ -906,12 +907,14 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20230131150100.1250267-3-sashal%40kernel.org.
