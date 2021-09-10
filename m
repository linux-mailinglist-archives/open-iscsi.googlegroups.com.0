Return-Path: <open-iscsi+bncBC63XVGIQQLRBSO55KEQMGQEWGSUGUY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5094064B3
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Sep 2021 03:03:06 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id u1-20020a25ab01000000b0059949024617sf231116ybi.17
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Sep 2021 18:03:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631235785; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZH13ieTWxp07hB+LZaObkqHMW8sOrXRxZdjqwi19nCj6lF+7Pan6B11dSDMvjNMk4
         7tUPiq3qEEzRsdCaDVwUNrTAmVoT/zdPXdmjD4yk8/KEjMURpPdE8/UGBqB1NpTQaHek
         FVXLqhMI0K6jO8+lz5L1lD3xEcwGJxX8Y48xdZd4+B/kw7/oZcKvedgrCq91xHkGgIzt
         Rw5HqZQ+kXHMHsrIJd+3VwXA6F/j+gXm11TwcJeR/DFxDXC6QCr4hXzMLfwPYqRIPgdN
         rXP261kw4QshYhEt4MiDg4xiZiPR/QnK2txkXUwRZLl8DCUe9EbRj2WcHp6NhVTAdHng
         E4nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to
         :message-id:date:subject:cc:to:from:mime-version:sender
         :dkim-signature;
        bh=t83TQvftS4rRbh1RHzX+CtcXJM/JCgy//EAw9OEW844=;
        b=Nk44hGHVjY2F0ckyTSlY0aYISfYcetRGOI914hhVW/XzptsUDu7sPk72i+OvnV0MDX
         ZLBWOvwUr5YDptGyWbA/6zF/SLMbsei/QVlhux0ZaxXhASYRIbRo2DgkNHjytCATvJQG
         TPOxXtYDyZpnqeQ6c53lzCJi9SBTlA615y6tqvm/hU2CTs1TkOInlcLx4LLxOvOaLfaE
         EIg+V6tgfsavVSU2r+ljY5JBhDT8bomSXCm74F5zYp2U3ezpZojvSFAROHu3iWsaUMY+
         ohpowP7phvZj0wIeGkMYULicc3/74EY+8a/rteT8owa+RKxZh9nNiW84vO71yd0Glm8r
         /gjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t83TQvftS4rRbh1RHzX+CtcXJM/JCgy//EAw9OEW844=;
        b=j4LjghDt5HHK0BDFUnevbQI9bP4Zc90lnbEe90dtaH0KonbQkVRLMBfGHqNLCUlwJL
         fnXwsnXI/uYSBJPl07+6jU6sjwWSIS1x7YU0NlAUf4bPucv16UM9hDLPcBTntuMYwzmj
         lubv1i6Vhw40SxAyi21VSeScp0Ab8WSw/xZWTAbiDqbqnNjPBGUS2CBol9dU8D7Wjbo8
         46LCedoSLB7v7ny4cw7PugIIO0DJvC4yZiDtJyj3a7UfBVTjtYuVxwt8A7+KF1wXjrPz
         n6nx5yhCC7dXQ5d3zOdIa5no+XpVjcej3ZCJS3Jw2Wcx18eT0wTbs2i9QedOQM4eiB6K
         Xo3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t83TQvftS4rRbh1RHzX+CtcXJM/JCgy//EAw9OEW844=;
        b=NNZD+8Rf4+yIqa0388H2RfyxprxyPrzEqZnGBShTv+0xkv0kfQ/zwUeZPKEQImKVIO
         7khtjIAIuWZiMizyvpLfCqGaxmLU1Amyb+aS1QEht0LmTGKlWSaNlBcLSd2fj9ujHtXV
         0vbk4s7U8o6NGgJw5JMGQcQSrkCYeWG9SHl1+YSsZEtWr5QU1P2iodNBJzDSb1Izt69m
         4NA2VpUM12d4GGzt1hj1lf1kxrUYTwSI5t9HubAAYkt77xEkmyLKB+szsfR+5ylyPyVM
         VAinQGhLmNbGuRvjNm0BJ5uOifgYWHSUxSnyR2shX9oj4hJ3xRNWDT4LlhFMgQ0fUiU7
         YyeQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5316thN4s/S1htVjA5/8UM9T28PV6d1wLuchzPziCu/sicXHzBNb
	L31ylgZD4IzdK8DH6Smc7OQ=
X-Google-Smtp-Source: ABdhPJypC6y6YyEEM9RD2ouKhbYNfZp+tRw51Wrhx4H9gKjLcCwyhxmrf9pNF7nVOlDweI5BZhcvaw==
X-Received: by 2002:a25:ab2d:: with SMTP id u42mr1100708ybi.481.1631235785189;
        Thu, 09 Sep 2021 18:03:05 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:9904:: with SMTP id z4ls1954129ybn.5.gmail; Thu, 09 Sep
 2021 18:03:04 -0700 (PDT)
X-Received: by 2002:a25:688b:: with SMTP id d133mr7718227ybc.511.1631235784693;
        Thu, 09 Sep 2021 18:03:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631235784; cv=none;
        d=google.com; s=arc-20160816;
        b=ddsPS8hTMBDCR3/lTpkVMjhWroju3qMQQBJKrGwsBku2RJECc5Av5yBmZF9gEh+nUx
         nU95Tyxm9L3kzeh2ol2Ypu9ONGAfXJ5z2KUn9ki3b8/Ec+HYLqQD0ISbtvsBcNMW8+ca
         ScO9P0mSOljjLzRFFs4hG0lkwrvRkOtn/+YTe5ZOf7WFczdUc+naqlK1FuHYeo2GtoYL
         nAHv4IUVYWJn9rN/UkecktLxLFQC5L4e7sxfVD5gX14z+oz6AtilwMQ64qKIDap2OfFS
         pIWf3pMhioB0ylNoQTbMlBznmQ9xxVr9B9hA5Dgjge96h1qm3aEriOPRcLxndqMVzk4+
         zNgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=58dfDqPdIUyOLHIMjgry6fszY+RW0sZcy2cRa/+C3oc=;
        b=zJ5ot6aPtAP5Z+GMRhyKeGHawtJo2zav7YCqVNisO6i1e9N7XoANHAb2Z44TLu5Ioj
         I3h0gkJ1hijysnXFcmQYjqMsG/88Vs2TD4gFqaclF2XjqssQy0Hhf3JPH8alVF/1Huwz
         xOqEV8WHXlK6bu7nGm3whWNGQcH5NzIY2E28Ens2h6cvAtw7RI8NoT9416jCTK+u57Uk
         m87+qweva+LT8TPpCNr29rRHNLSMy3fnV6vI6g4huJhNPpxAh+1YfETpeOAa3fi72ZSw
         qu22S+g+yqeSDSCGeY9YjYWQI3sByab7LojCuIvhFPotqVOfd7a08irJDuKSBC9RfkWt
         +qUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) smtp.mailfrom=dinghui@sangfor.com.cn;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=sangfor.com.cn
Received: from mail-m17642.qiye.163.com (mail-m17642.qiye.163.com. [59.111.176.42])
        by gmr-mx.google.com with ESMTPS id i18si293880ybj.4.2021.09.09.18.03.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 18:03:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghui@sangfor.com.cn designates 59.111.176.42 as permitted sender) client-ip=59.111.176.42;
Received: from localhost.localdomain (unknown [113.116.176.115])
	by mail-m17642.qiye.163.com (Hmail) with ESMTPA id 530C2220112;
	Fri, 10 Sep 2021 09:03:00 +0800 (CST)
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
Subject: [PATCH 2/3] scsi: libiscsi: fix invalid pointer dereference in iscsi_eh_session_reset
Date: Fri, 10 Sep 2021 09:02:19 +0800
Message-Id: <20210910010220.24073-3-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210910010220.24073-1-dinghui@sangfor.com.cn>
References: <20210910010220.24073-1-dinghui@sangfor.com.cn>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
	kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRpNTh5WQk9OTElCTBkaTE
	JJVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OFE6Hyo5Qj4SLB43PS0fSAMr
	NAIaFAtVSlVKTUhKSUhOTENLQklMVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
	QVlKSkhVSkpNVUpMTVVKSk5ZV1kIAVlBSUhLSjcG
X-HM-Tid: 0a7bcd3aafe2d998kuws530c2220112
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

like commit 5db6dd14b313 ("scsi: libiscsi: Fix NULL pointer dereference in
iscsi_eh_session_reset"), access conn->persistent_address here is not safe
too.

The persistent_address is independent of conn refcount, so maybe
already freed by iscsi_conn_teardown(), also we put the refcount of conn
above, the conn pointer may be invalid.

Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
---
 drivers/scsi/libiscsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 712a45368385..69b3b2148328 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2531,8 +2531,8 @@ int iscsi_eh_session_reset(struct scsi_cmnd *sc)
 	spin_lock_bh(&session->frwd_lock);
 	if (session->state == ISCSI_STATE_LOGGED_IN) {
 		ISCSI_DBG_EH(session,
-			     "session reset succeeded for %s,%s\n",
-			     session->targetname, conn->persistent_address);
+			     "session reset succeeded for %s\n",
+			     session->targetname);
 	} else
 		goto failed;
 	spin_unlock_bh(&session->frwd_lock);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210910010220.24073-3-dinghui%40sangfor.com.cn.
