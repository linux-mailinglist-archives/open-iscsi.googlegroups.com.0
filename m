Return-Path: <open-iscsi+bncBC63XVGIQQLRBSG55KEQMGQECCO3EII@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 057CA4064B2
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Sep 2021 03:03:06 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id v10-20020a17090ac90a00b0019936bc24c7sf100393pjt.7
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Sep 2021 18:03:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631235784; cv=pass;
        d=google.com; s=arc-20160816;
        b=OAzVY7rws9+brzXBapZLEhxH2yiiwwcm24i0K2v31r41kZo0jxq50QN9iPJ/GQzc/D
         hCj/knXZu0bYzRt3TtcFI3EN1zBfL0LYQHzv/aoDnt1Ql8pAcgBHtAFhFIIZ2N7RN6eZ
         wog8MnVRgnLCMF3/DSAKutRRZZ3fwyvH6V9cBITld5bbj/1JQe7/AEYr0ZCUr0cokmkl
         TYMFMTm85ciu5Q7OvNuJX8v60V3BuMYq1BRBKr0U3AXl2o+qAlQ7wk9NiWXMRo9WTuVZ
         rNEHr2/TW7NRqmgJfOk/UlT5gPNbRdtE+rDXtiG0zLc8ZYu1CJ/h2J4pmes/MryhjN8D
         BA9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to
         :message-id:date:subject:cc:to:from:mime-version:sender
         :dkim-signature;
        bh=mfnfBK6yWtvXa1NAq+ADzNlSK7rSQxD4RGIdCXdQBvU=;
        b=dQADgzGyIuCkbhtLBzZpf8LL7gQi8CEvZk6vo4jSIKTRS/logmH8cRuaaTaWSWLgLJ
         2ZrpMJ7pGYtjuVatC8pm+GRyirRm02UFywtbUiNJXkVlRIm6/Tght5wmVi1xudvi3OXG
         Q7upxGL4NWx4lWBisJSDUUtUtZQVOaF1//3tD/c8zaPdCF3zu7sqERMAf73I8GyiUMRI
         gsdWRomQFaKHEXY178EY2b04kocWwY3pOT0ud3laC5kwSnDYDsRwAkGiMonNgBocyqcZ
         mq8i+DdG30n4EAtq5hhNLOQWxb49xyE2JajxF74K7S29xjN3F4E/eP4MezqxoOi7ev+m
         loVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mfnfBK6yWtvXa1NAq+ADzNlSK7rSQxD4RGIdCXdQBvU=;
        b=ps6W8BJUUsKssXQhwkMi4e1NQVRJ66q8YGfqc11KkyEafmO6eevXifMZL3ig7YyzuZ
         2gmq6h/JZzAOqvhJU8gpSOZjazpSJZhZMHt6FmkFL4zG0qhcsvDogLDZRN+za8LDm3Tm
         ULG167JIsrRaKUBR6bPLNwSED0xWjVzt1j44wd01BTul7U8ZK1gGlKL7GU0MM05ES/sQ
         qYfUGUL1+Tg/KPtjLb6ZdFqB62wyZ+oyoBUbieHKfYU23vKOJ9b3KT8TST+GRL1DSYWJ
         zR8AGZ8Ndf0wKCesFqz+su10cSG3WRDmdYY1v0+jIUJeRJHcRRHjTAZX7Eywdfs2QX6v
         cD3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mfnfBK6yWtvXa1NAq+ADzNlSK7rSQxD4RGIdCXdQBvU=;
        b=k90SbaIE7N8tRGz/zA8xiRzseqi6tX+TiNa8zGXU+JWEK2zY1bn0aL83lZirAGdnFr
         +xlyskz9lJy4srF4W49xIcVyviO35xDSmpEZucLYNtB1yTuUxlNehVW01hMfQ2a3qBUd
         xmXJ66yjiaXtt6FlLGPiweUAuOk1BUL9A7SEA5rVxEqXDnKTznlIt6zXsn8nTzCaqJsx
         g3jKsaYk8I9MSV71MbqpZK7GjE9nwcVfBwYmm33H2a4BO4ftn2NVQ+2Ph+fQrVQPf31T
         jcabpbTHz3Z/Vh1Uh32rUHi4LB8ghZUo9SItDIoJyrKzOxOn6+BkbRBsevhE1iUmPW8k
         lPFw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530J6mKFnCQJCTtpPmUNKn1SS8+bc940afc6huM7QSwzc2QNJRA6
	m4ZqjTo6t3m+67IP2Ff7WVY=
X-Google-Smtp-Source: ABdhPJxW+B0wmjexnv1hz1VfJdvSRau3DEmv9EvKwSSRCLjulq5O0tqolv8rdRmyItD9d3zMcZQfPQ==
X-Received: by 2002:a17:902:784e:b0:139:d4ee:899e with SMTP id e14-20020a170902784e00b00139d4ee899emr5255197pln.48.1631235784700;
        Thu, 09 Sep 2021 18:03:04 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:ed83:: with SMTP id e3ls2155543plj.2.gmail; Thu, 09
 Sep 2021 18:03:04 -0700 (PDT)
X-Received: by 2002:a17:90b:17d0:: with SMTP id me16mr3840419pjb.78.1631235784039;
        Thu, 09 Sep 2021 18:03:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631235784; cv=none;
        d=google.com; s=arc-20160816;
        b=WXM5BsFBjWfScugOvHWgq72pUCLQoDPvnmHs0BXacyJKhypvyqKzxvc3Z3pETOvZi5
         D/xJDO6N+SX3zfmvzJ6Ulp9s81Lb4zTD8PBxwC4a+44sS3t/sNSLcwv/wUfhkqMxCtvl
         P+BvDg447uiHSecfF9YnOe9fjHIASPPdYhfnkeVlKubXSN3YLxXattclZn7VtC4IivaZ
         3Y4D3tRBGDgT3Ed0V4RxBheEmMhwkVrFa1K+ciyG3f31Qf8go93R0+2jD5jhnLaLNHq/
         Ci9AwwjZhvl0OG06ZLuJozcuOxIqanf6i+hvWH4COTOE3ApUzzomr0L5eotTwmvcxE4j
         ZIfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=v2ihodIBMuXOredznMSu2HhjVqtaJ7CuNyze0y2f0nU=;
        b=dVHReh1GamYNPhJarEtL0v3TvgY0sG4QCVnA7djlVdvMwmwUtH8P2yq8LkBG6W2Ul+
         cS2S4D0zsZZ61L7B38069WhvUdyevVldJ7lkok1UPS527fLWlisx3oAjM7FZs1AxTY1Z
         S/8MkEgASrS3EznJnc1QYTwOs5AvXIxojUvGDSWeWeUg9Hf5nINhFJ5DSTTasBvKo+ak
         KSeEczxUQmvIOWkae/nEEaXxiR5JhF2Zmbh8qabqzMxUQZBEZkrHILC1BqC6SlD8PL5+
         XvVpiOuFrKvndl9gWStB82WcNeyWQ0wBSWBwGF23enOjHu0UbQ0sdPhWeKO5s/weApz1
         dCIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id m1si311840pjv.1.2021.09.09.18.03.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 18:03:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from localhost.localdomain (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id 3ABC52200C7;
	Fri, 10 Sep 2021 09:03:01 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	michael.christie@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Ding Hui <dinghui@sangfor.com.cn>
Subject: [PATCH 3/3] scsi: libiscsi: get ref to conn in iscsi_eh_device/target_reset()
Date: Fri, 10 Sep 2021 09:02:20 +0800
Message-Id: <20210910010220.24073-4-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210910010220.24073-1-dinghui@sangfor.com.cn>
References: <20210910010220.24073-1-dinghui@sangfor.com.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRoaTEtWGR4eSEJOGU1DSx
	8YVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITk9VS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OS46Mio*Sj4KEh4BFy0tSEIZ
	IxIKFDJVSlVKTUhKSUhOTENKQ09PVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSE9CTTcG
X-HM-Tid: 0a7bcd3ab389d998kuws3abc52200c7
X-Original-Sender: dinghui@sangfor.com.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as
 permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
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

like commit fda290c5ae98 ("scsi: iscsi: Get ref to conn during reset
handling"), because in iscsi_exec_task_mgmt_fn(), the eh_mutex and
frwd_lock will be unlock, the conn also can be released if we not
hold ref.

Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
---
 drivers/scsi/libiscsi.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 69b3b2148328..4d3b37c20f8a 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2398,7 +2398,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 {
 	struct iscsi_cls_session *cls_session;
 	struct iscsi_session *session;
-	struct iscsi_conn *conn;
+	struct iscsi_conn *conn = NULL;
 	struct iscsi_tm *hdr;
 	int rc = FAILED;
 
@@ -2417,6 +2417,7 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 	if (!session->leadconn || session->state != ISCSI_STATE_LOGGED_IN)
 		goto unlock;
 	conn = session->leadconn;
+	iscsi_get_conn(conn->cls_conn);
 
 	/* only have one tmf outstanding at a time */
 	if (session->tmf_state != TMF_INITIAL)
@@ -2463,6 +2464,8 @@ int iscsi_eh_device_reset(struct scsi_cmnd *sc)
 done:
 	ISCSI_DBG_EH(session, "dev reset result = %s\n",
 		     rc == SUCCESS ? "SUCCESS" : "FAILED");
+	if (conn)
+		iscsi_put_conn(conn->cls_conn);
 	mutex_unlock(&session->eh_mutex);
 	return rc;
 }
@@ -2560,7 +2563,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 {
 	struct iscsi_cls_session *cls_session;
 	struct iscsi_session *session;
-	struct iscsi_conn *conn;
+	struct iscsi_conn *conn = NULL;
 	struct iscsi_tm *hdr;
 	int rc = FAILED;
 
@@ -2579,6 +2582,7 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 	if (!session->leadconn || session->state != ISCSI_STATE_LOGGED_IN)
 		goto unlock;
 	conn = session->leadconn;
+	iscsi_get_conn(conn->cls_conn);
 
 	/* only have one tmf outstanding at a time */
 	if (session->tmf_state != TMF_INITIAL)
@@ -2625,6 +2629,8 @@ static int iscsi_eh_target_reset(struct scsi_cmnd *sc)
 done:
 	ISCSI_DBG_EH(session, "tgt %s reset result = %s\n", session->targetname,
 		     rc == SUCCESS ? "SUCCESS" : "FAILED");
+	if (conn)
+		iscsi_put_conn(conn->cls_conn);
 	mutex_unlock(&session->eh_mutex);
 	return rc;
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210910010220.24073-4-dinghui%40sangfor.com.cn.
