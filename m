Return-Path: <open-iscsi+bncBDTZTRGMXIFBBVXX7OJAMGQE6LSIICA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 278BB50775C
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:13:44 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id nd34-20020a17090762a200b006e0ef16745csf6357840ejc.20
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:13:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650392024; cv=pass;
        d=google.com; s=arc-20160816;
        b=GZm+a8d5GcqGK31Ax51vtlPNx86H+iOmh1MxuW3sGtWaKrfE09L/ITeLgjeQ3cdPtW
         QQNssdYRYemeE80jq8WeqWzOTIyEjH2knNazbyBMfDHgzcQqCcD17kUxWotA79zrya7a
         lS/Z9ETJ0LPRvchybMj+WJwn3XACTIEvfQYLIwlrH0MSJMky3HGWAgG1J/bJr/y6MeDZ
         sQTPOnRLr6TeHjh5tJ7UFO+ylwH5du3bfjRBvv7fs7lhgaAmi+B3cPhEyX5nDyKyZBhc
         AH4yMVH92QqTSagC3snBhFqJuzRpNaG5Gzu2jzSW5DUFqAyRIOotdxa0pnwgGY4XGAdo
         B5Pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=s4kZFHUVhT8dFA8MbJPfbB33UpL0sHGSMwKiBLbXt0E=;
        b=meq4/+zEi4fHuc6WQEt6pMVsvngTd60K7L/W7whtDKrdWq3UoTptsdmhIQ9a0l34CC
         aoaD5Ke/V6eA91rAtDhyuefQc+kTEb8GYbOxPT1sbJO5kgYnbG9qKg0zYDMGjHHCsz46
         fYoTvG/aw7/SoXS38GuaxslHaJOeLtfkcXabb/LfXbSZiXjMVUqqmpv/aUTqv9h1TuNb
         cEy77Dm9tYgYGLssbMbYOBO7ZDoBB365Pxv5M0GPMgc2CMW6DqRo6/iA0DIx6L7RcjPx
         1YKOM5ygoYiBEaa0REcrRk47xWe3moz/2LG0cK6cokA+DAyDjwVdNVg5exx91A3q4SQE
         21eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Uoxjfj8D;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s4kZFHUVhT8dFA8MbJPfbB33UpL0sHGSMwKiBLbXt0E=;
        b=DWERrT6zNVk1lJ/XMHL0Fl9DV1+KiCxY7t6jREW1Hcy/wInJnMvBy6kpkAbCiyeMRH
         PuMuu71+8BjDyJha/XjqMrv3iJLAgXT5o/xqxSV7FjyG1uwUIXlEVREhcC4kWzT0f3IA
         owyodqsOPsky2H0iihUC8tVjzvPDLNiw+V3KCrG/Tf3bFJcVAwAct1VHXs7SWvaIseP9
         QTPabF2MLB5XQiLgVaHwlCOFC812ZVl/NGAR7g9pzW++h7+Eyys+Y0bbqAJoMuCDliIP
         hvieZVGCZVjsCfA0UlS3O/exL58pvPrektx/7FXpm2gdirXnBVo0b0ox/P3ZAl9vA/X8
         B5qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s4kZFHUVhT8dFA8MbJPfbB33UpL0sHGSMwKiBLbXt0E=;
        b=KnU1PPNqOpvSzoZwHwhBTBVn6S42c8pMFRGDhT6/jq0cK4CFxRidnOYVpL+reCTraV
         B6ZqRgp0chpRWz0eZvWqdLfIvqbH+fcwo4GDxb55oFxbufaJ24tKU/jxdBWAvxJDvxjE
         uPZRL2xA9Q5tWaOo4ofFgmm7e1ylSlBdQ+FyrI8zYYb5UBrBtjhCocMaElBiom3tUFUc
         4rzDnJhgRVKzbU0JiRv6HdCZkcrhD17Hj3daKzeTGEY1WQdD0i23LIDhssrKqGRtRjrV
         PUC9UybIzksvPIMyCjAAiyV2ttG+b0GKOYk+rtS3LSeORTKpOkJ0eYZys3xeEp0OdGIj
         OB/Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533RbxneSOGF1+ubUeUTTh+EkGA9o2szFGheIcGWBKqhzLvMaQc0
	YLUQ4jFdGSnTR+iNCpoKcm0=
X-Google-Smtp-Source: ABdhPJwHgBOL4t9ZWLRFGqNC3O5wfAJ7oQ2N+okDNPnpGhcDsECeyHE9awBvwtTLoHRRsfe3GMvM+g==
X-Received: by 2002:aa7:d318:0:b0:41d:8733:1c4d with SMTP id p24-20020aa7d318000000b0041d87331c4dmr18400759edq.46.1650392023754;
        Tue, 19 Apr 2022 11:13:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:907:72d4:b0:6ef:8be6:1590 with SMTP id
 du20-20020a17090772d400b006ef8be61590ls310069ejc.4.gmail; Tue, 19 Apr 2022
 11:13:41 -0700 (PDT)
X-Received: by 2002:a17:906:9c84:b0:6e0:7c75:6f01 with SMTP id fj4-20020a1709069c8400b006e07c756f01mr14618249ejc.103.1650392021206;
        Tue, 19 Apr 2022 11:13:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650392021; cv=none;
        d=google.com; s=arc-20160816;
        b=iqEw4OoCUV0WcCkQIKu5rfM8AfCPZyzRNnVfNCss40pZXnkE5YQPCJKVcInH0p5Tzj
         UOAVlOOG+tZQ578RyLoPc3wFhP8z/xbOiNyncvzrtDYZCQ6bUSliyMxXnZJFt7SvAkiw
         Ww3pxbUhI1Tx+NUINClZoumW/wSdSPgO/8TW6RvGLB05MDnbcQmRHs8a0ucX/gCTv18o
         L6H5FnB8FbM3jP71PS5t4Bm6WI1NoBNPYes/K7QoZYVDuvFdB2dHJd+BxEzSUW0ilyMx
         BPgq9u+ITqv+rkTF33vIhZ9WaVQiTtz0PMKrd8LuLfJT/RSNOg95uywnyIdkeuGd4dgc
         mt/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4OnVzp7nFpvyhtJupIDIMmmsFtBYc6aWbxYWRG10yF4=;
        b=vJ6blUZ7SFp9r0SSgnxbyCRsNb18ROolAHrusms1/snwoxiIa5CVYFNENGS6c8Q8M0
         IWSLYv9bS0kRpxvsMHPy3LNCbyGeGLZFwAibGS3wBYebHGq6ipkflZuiHxoh9QFOFqiS
         +QeZqp0eUc5n1msO6+hrKJe+pJLanzaHy756I8RHLIF//70McOMQytAiMx2uw+CZ7Wum
         s8LqJ8xAsfzOEj73BO9GcO/atVw6uxeoxObG3+h0sRaEjBfooH+nO2X8kaExJMH+0Oyg
         hAMHi+ol2SBXQef5TvFleQ0uXqNGb1iEGjVyPATuySfFJWm1c0kD1kdEK7mr/rXT8k2M
         9d0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Uoxjfj8D;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id t16-20020a056402525000b00423ded18951si349571edd.1.2022.04.19.11.13.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:13:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F295AB819AE;
	Tue, 19 Apr 2022 18:13:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76243C385AB;
	Tue, 19 Apr 2022 18:13:39 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.15 21/27] scsi: iscsi: Fix NOP handling during conn recovery
Date: Tue, 19 Apr 2022 14:12:36 -0400
Message-Id: <20220419181242.485308-21-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181242.485308-1-sashal@kernel.org>
References: <20220419181242.485308-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Uoxjfj8D;       spf=pass
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
index a4f26431b033..0f2c7098f9d6 100644
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
@@ -3312,6 +3315,8 @@ int iscsi_conn_bind(struct iscsi_cls_session *cls_session,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181242.485308-21-sashal%40kernel.org.
