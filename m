Return-Path: <open-iscsi+bncBAABBYN65GEQMGQEB2ER6RQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FEE405D4B
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Sep 2021 21:24:19 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id t1-20020a4ad0a1000000b0028bbf04eae9sf1440895oor.10
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Sep 2021 12:24:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631215458; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oj2aXgHlzuHkDMO2NirO9KEiqMjrvuXACYgS2zMw0Yncnc9MyE4ki7jWNREWIO7PgO
         j1Rffp0+TEhoEZdM1DPgrtJLItXlykiBenZQeNJ1wqgoc19GUgLXYlRrXtjp2tUjRA3P
         FpA6DUusQDS/8d7KSByrPDUMAckD0XoGjf1rLAnBHn06XHwMnF73QRlW7jwZ1l73DSUj
         x7iI4O3YCSJZY2Vk3+ytFO2AGhTJmJu526zW0qee3toonWTqXs4skzhuyeqFxHMewSZn
         IErrh86IEmULSIKcKv54uckinvfNfhWYYOpMPfh+T59xYXCpEPbqTLU0RAkfTrk+Defh
         HrOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to
         :message-id:date:subject:cc:to:from:mime-version:sender
         :dkim-signature;
        bh=XJugkeBPnEWXLULjy5oJ7R3CY3FPy2xpjsMPHrvZoAI=;
        b=KK5dIc4PURF+hFtOnd8+97Si2CdtT7JuPBdXPDWGtH9Fug+kS99mBAaaIxLsrB8GzV
         MMYs0vSn3ztQYLwuXt0I1j7aPhIG6ikiUx9suuRnx3z/lgletrMhBPf95wAH8voQYAwO
         BlEMo4nNTn3uxEW8EF4wbMrXeTyHl8Yyp71360mvLjf9XpWwQzU9MT4Wzq/DZv53kOFB
         oLE9pKBAP6V1n8CRNtM5F0/YU2B9QyZWfAfBQNVObyRXNbDLouPbfYPPEc7/B4Qb7hWC
         Txp61QzLW7GDoEAXOd5OW5sgdoInDyWQYDjwFqnm+NFh+HAE5S6OAE8EpOn9miLsp5DC
         77YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XJugkeBPnEWXLULjy5oJ7R3CY3FPy2xpjsMPHrvZoAI=;
        b=sk7T4tAwkQNL7wTorM/vvWmB6H0VFSKj+QpJkKjdE85bvfUudFIe4/Owc/HOTcYa+4
         LKmqRxNRrGNKqYLosqWOIoKyXn+JV8QFS2CVNQnZsU3rYmF99D1suGn5ECBYQVB+odkT
         izXhtW6X+lLDkWLwxo9kFKVwpwq3oqF//HO+5xhPtaCvty5rf1O0yXsa8/P4W0vg8/TF
         rJTq8tp9htkTAYRYPzYhufcdQsvzO6hJhf6BVJ+/FylXVAZF2j2F3V2InAReOEtTDVOr
         JEicgmbeSH72NbwcpvHV+QKsOxqWQN97Ld1Se1yttjQsHbtm88zX8fXWmSnX52SjAGXu
         yCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XJugkeBPnEWXLULjy5oJ7R3CY3FPy2xpjsMPHrvZoAI=;
        b=l41R38Bi33YXm90H1nBel0fhgpi8XKY15yMxN7NXQoduRhDSMVbhZx4LYDQm6hRxVV
         IPfPxluProGkI4DTqKjWPEbq0KmduDgb1MIDo8cGMO5yc53BJ6HriiRL3QLnO/kfz+Hm
         bvziWdsm+T+bpa8ndjLBrpCtrQY3Lzht4oncsfU122KkC4Hm3/7MKvK3KH/koUpe0r6C
         rn7+kuJoewna8ut1/8rmxYV5bg1Ir8O1Fli/BXJSwgUBlsGKNqcftYuGYSp41wTDq/CB
         3J/Js7jBdL0wQ52xl6tjoFjszjiF7z+XD0GuNc/5kOMWoZxm5ER+kBYbGs/6vuQ20mGR
         rdEg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5332UJgEnrRqFqJSTsVFJcQzVzt5XOPTITBr/UMIG91kD0Op9Fqw
	7Q795YIxqeIkrVQF46J79G4=
X-Google-Smtp-Source: ABdhPJyCj0KdX3dgP5Bx4J392UQAPOzu+UO2cTIiRUZnr/vD3VxAJ/nGtqP/H45eiiaUvJCe4R2E7g==
X-Received: by 2002:a05:6830:10:: with SMTP id c16mr1253305otp.63.1631215458031;
        Thu, 09 Sep 2021 12:24:18 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:907:: with SMTP id v7ls871841ott.9.gmail; Thu, 09
 Sep 2021 12:24:17 -0700 (PDT)
X-Received: by 2002:a9d:17c5:: with SMTP id j63mr1350912otj.208.1631215457810;
        Thu, 09 Sep 2021 12:24:17 -0700 (PDT)
Received: by 2002:aca:4bcd:0:b0:25a:47c7:7cd9 with SMTP id 5614622812f47-26dbbef3202msb6e;
        Thu, 9 Sep 2021 08:48:06 -0700 (PDT)
X-Received: by 2002:a6b:e70f:: with SMTP id b15mr3301555ioh.140.1631202485998;
        Thu, 09 Sep 2021 08:48:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631202485; cv=none;
        d=google.com; s=arc-20160816;
        b=R5DYYRvq387K7hOIhHI5EBPMfMbfHs2BnT9KjYUNxPKJhMOpZZvowNNJVPaLlIVUFC
         ahL8ia8DzDAfBPxv1h3IIVoxEs7cv1cDt8tkTtJlPsczbAC2KFlVbl0VncfW8pBnH+yC
         I926OfwCvM+yyrKZDZyX0gE6ZaZXyKet2qbXWKgeC8Xkiadf05f9di7lREY0czggzeco
         0EnGRH4Wp4EayZjrKhxSyoCEUSOXsRNWWVzjxJQCpcubN1GYmHpgdNehPcX6A6M6uvBU
         CdGnaOKix1TSHJNe0vxpa4KWiK2uzWHqw9b9aBA33G9+u3KHYGGgKOZxC/7SJrj5mN8o
         sKXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=v2ihodIBMuXOredznMSu2HhjVqtaJ7CuNyze0y2f0nU=;
        b=Xa4SIWfAhjbE03/YkAds7fA84wCVCkUKsBh/cupC5AO1UOk8drfOnSMsXky07vIjrr
         pA3oHnbl/quIGasIwZmvb8SuqSPVgwxJIL6Z3fPSi8etatLzWpKhnh9Cvx9GuDq4hnmF
         tTOSZ2HERGAdrwr7gJhBo3XN2tpB64d3d+6gNcNdebCK3hZNGhwq5UlS78zdigiNmQIR
         vhgJyKLg2ydR9BV1S+oMzhetGsN1OK7s0pU+GrfvEi2SyJXmSfA86ExjZoUkoSJj1KOU
         kIP6IMEh/uWOmmw7xkwla1zh0R6a56QKAMnXrUhPw2VBQ8kwCkm/0DH8YxEOFVItOtKE
         nx8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id o21si157481iov.2.2021.09.09.08.48.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 08:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from localhost.localdomain (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id 614EB2201B9;
	Thu,  9 Sep 2021 23:48:02 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	michael.christie@oracle.co,
	open-iscsi@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Ding Hui <dinghui@sangfor.com.cn>
Subject: [PATCH 3/3] scsi: libiscsi: get ref to conn in iscsi_eh_device/target_reset()
Date: Thu,  9 Sep 2021 23:47:29 +0800
Message-Id: <20210909154729.20715-3-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210909154729.20715-1-dinghui@sangfor.com.cn>
References: <20210909154729.20715-1-dinghui@sangfor.com.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUJMQxlWQxkeQ0kdTk9NH0
	NDVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTo6Dyo*DD4VMB8cDRA*MwJO
	CCMaCgpVSlVKTUhKSUtJT0NJQktNVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSEhMQzcG
X-HM-Tid: 0a7bcb3e99a5d998kuws614eb2201b9
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210909154729.20715-3-dinghui%40sangfor.com.cn.
