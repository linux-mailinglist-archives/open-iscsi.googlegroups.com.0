Return-Path: <open-iscsi+bncBAABBTFQRCKQMGQEPTLQFZY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E890545162
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Jun 2022 17:57:03 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id s7-20020ac85cc7000000b00304e11cb41fsf14067377qta.4
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Jun 2022 08:57:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654790222; cv=pass;
        d=google.com; s=arc-20160816;
        b=M6UMQm+oVwXzXYETln1dR/kGsTx8XdvuDW3PcWrzA6J9grwruprUVbzVJrT1N8A8kg
         CUR6gnIGy9rvIHCGWu6rFQIg60Zq7kxPY0ayAD+inAJkPDGJDP0eHwwjPjs30vtL+4gG
         IdAtHzsvP9vqgTRIF1RLdjrdxTIQCJUksZCbr0QWffesyMxrQXE4Ocm9rFYL1F2mKqOz
         4IJ1xLrOUIMxwY76AoNoKjsFA1FTLrtGzDlYU1U1BsejmXbYMT3YoMzSApH2QiLqE/SO
         TdCshDyP2nivl/HQHYjVJTTvl+n/yVvcelK4K+R5XD89/KpYJs6SjB0Br4EQxrPTWQck
         ZzGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=fPk791p+UbLZJ7LSyP7mUUReUpPOlPo8iDQD4Xvm7L0=;
        b=ugFEoJu2xheA11M1CA1ciBB0HTvPx/lrl3U7/2t9F+nCVls5mR5b8aYL6EAjPtJadf
         EbsvNA6lXiLx8EkG/tu4TzMDAZQbRQLbJ9p6af/LQvGH73eVMWmT/ZRgdgLJmh6Ng/0B
         7WQlT/lW9YBebPwgD3x9Vm5zIZmMJHWNBbTFPm1fOHdm3VIqUV5+vtw63xbOdXvH3Duu
         2iYfWdyfDEPj7mfb57RevpH71ytchI0z9hvAjqp9Xh8Uv39g8Yz7Y8ZuX+ABt7HupERH
         uCnxuiIjow2IYcyxvCFqSpYyaFfkjzQllXeZZ3WMhavij472loB8A5dfOohVRV+RJSuA
         cqgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=MhW6FQui;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fPk791p+UbLZJ7LSyP7mUUReUpPOlPo8iDQD4Xvm7L0=;
        b=ad53NjMj/PV3z4dSXF7AxSEqGiYfVdtXm10xQmtsmMXm997rpoLyYTjLnQ1BZ4zqSm
         8eZuVywDTSHCkhvxhVJ0jPy43cAQj4kd18yYvZWuNikaW3g1IGjbQs2pSs8eavct3v9e
         CZdAh5yJkO14mT6qive4Ts9LN9BjuW/5JiCeoUZKfwgcs0j9R3V5k9xvtOJtQZvyNjln
         h73VzXEXaK6cEOlxmV5NsurxW1Q6pjLNWdrdWnTnnyV7MNd6Qz1MfM0uv/VRk4BjKz6E
         vR1xXXQGJOK+NsmvtSROB+mUKOoThr83JBqVyzA3p52R8iJq+j9LkvsL7PLu/OvTFU+t
         z19Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fPk791p+UbLZJ7LSyP7mUUReUpPOlPo8iDQD4Xvm7L0=;
        b=bCQ6HRcd5UoUVIgRQyRSVfklBCNvjrndYIiS+67pCOE/FdC9jQqNgjueuhhPMILn2T
         S1cYKexFT8xAgHZz+CpVMYkxP1fGOoTAsbLPy6hmpzA/pvpam2LqsPKiRRXBC1WVoPxI
         KrAOythMT274d64gSLLHYB9YYS/Wm0fZ5hIa+OUDUN77KjAgY8Gs/9U3me6b2+gmvbUr
         Um5huN1ZKE1CE2L1ois7nRDFSQC/kivVSOwPBq2i4hp91fAjU6SLWnf1NaWtDD8ZL/+1
         HEo4jx7JWGC3ePmAT76uIKlD6c6kP8bjXDJAOT+0jh7q/DK+m7ERctSlf6oFgmofyaOM
         1ZvQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531Rid3uGOuVQjkEjU26mkA+Z3FjEWjxE/82uB/11DP/TGfI6eQV
	wehBpLZsPsGw/GjDFLk6hlY=
X-Google-Smtp-Source: ABdhPJzK7gsBiv/pDBKaRl7C5L76QiNmGlIMm0zoQQYmhZjvK3oXxWOEOw5nJ8xMJWZIvj7FkRCbLQ==
X-Received: by 2002:a05:622a:1107:b0:304:fd95:881f with SMTP id e7-20020a05622a110700b00304fd95881fmr10832642qty.640.1654790222123;
        Thu, 09 Jun 2022 08:57:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:4312:b0:699:fda3:7819 with SMTP id
 u18-20020a05620a431200b00699fda37819ls7011261qko.1.gmail; Thu, 09 Jun 2022
 08:57:00 -0700 (PDT)
X-Received: by 2002:a05:620a:31a4:b0:6a6:d53b:409 with SMTP id bi36-20020a05620a31a400b006a6d53b0409mr10474102qkb.292.1654790220763;
        Thu, 09 Jun 2022 08:57:00 -0700 (PDT)
Received: by 2002:a05:620a:1331:b0:69e:c22f:fb43 with SMTP id af79cd13be357-6a6d5e3b9c0ms85a;
        Tue, 7 Jun 2022 06:20:10 -0700 (PDT)
X-Received: by 2002:a05:6512:110f:b0:479:8ab:74bf with SMTP id l15-20020a056512110f00b0047908ab74bfmr19418972lfg.333.1654608009962;
        Tue, 07 Jun 2022 06:20:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654608009; cv=none;
        d=google.com; s=arc-20160816;
        b=Zim7sZoM50PxTctRCzAsURioOFsiYLRQZe8R4fYbf7X2Pt12nNmoTqXXj3miODj/Ua
         uyOuJwm6cdw2hySZDoI1EySwVjrRRQppbMOXFJG0+Ca0aRSsndFsk6vHBl2Lum1COOer
         b7ezhqh0haNjfMhzJuz6yi85vtVwjfRh17ujPTv7U3Xec3uqffCrOsjE3rZislr151az
         M1LrBLvnxQpX4GuqrXwEb8uACLJHcaoYyou9qw6WGb5BfKXueZPV2P52gU+ASjtScoK6
         YbBX7AYZJFhrdNl0hSaVkQWV/hvQ6vN5C53ci7R+skeqPS42YlzFNtndf/gUKG8UBSOt
         23BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=erg4/ytnxDK0QRy4Ec4htD6tNzfWgR6PKj+bDhEuYZo=;
        b=QrsyQhvDlrYcCRdZ3LE8LI9WRDW8RhnC2Gwn8VRZOP/T2r6NQKMwk7AJ5DRCzqSuwk
         Nb4cmyl2wnvAzArVQ8gxEFNSN6HV7/tqI+YCYc2Qx8PoDpBRTuqOHN7PqAbhfJURlxtp
         5O4x0e/ulwxP4VMHUTK6UZCIXI/VNJhBolbk3pp8Hp+9g36R+sSYBk9MvVhH142j8x8L
         xVyb2uQtZG5Vodusd+udkKYWkuihez8lg6ENiCBUgssUFy/vAqWulcu2yx6fdi+IZdsd
         AtRtUbbur/m2xROfvYbS3s2vRiufYO3woyrIULkRiS3kB3D1i2tzEc5nw1j5u16QlKGd
         xJCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=MhW6FQui;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
Received: from mta-01.yadro.com (mta-02.yadro.com. [89.207.88.252])
        by gmr-mx.google.com with ESMTPS id h24-20020a05651c125800b00255954875c2si258071ljh.0.2022.06.07.06.20.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jun 2022 06:20:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) client-ip=89.207.88.252;
Received: from localhost (unknown [127.0.0.1])
	by mta-01.yadro.com (Postfix) with ESMTP id A7B264242A;
	Tue,  7 Jun 2022 13:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
	by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4pXbYKAkb5QZ; Tue,  7 Jun 2022 16:20:04 +0300 (MSK)
Received: from T-EXCH-01.corp.yadro.com (t-exch-01.corp.yadro.com [172.17.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mta-01.yadro.com (Postfix) with ESMTPS id 191CB41BB2;
	Tue,  7 Jun 2022 16:20:02 +0300 (MSK)
Received: from T-EXCH-09.corp.yadro.com (172.17.11.59) by
 T-EXCH-01.corp.yadro.com (172.17.10.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Tue, 7 Jun 2022 16:20:02 +0300
Received: from NB-591.corp.yadro.com (10.199.18.20) by
 T-EXCH-09.corp.yadro.com (172.17.11.59) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.986.22; Tue, 7 Jun 2022 16:20:01 +0300
From: Dmitry Bogdanov <d.bogdanov@yadro.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux@yadro.com>, Dmitry Bogdanov <d.bogdanov@yadro.com>, "Konstantin
 Shelekhin" <k.shelekhin@yadro.com>
Subject: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Date: Tue, 7 Jun 2022 16:19:53 +0300
Message-ID: <20220607131953.11584-1-d.bogdanov@yadro.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.199.18.20]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-09.corp.yadro.com (172.17.11.59)
X-Original-Sender: d.bogdanov@yadro.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yadro.com header.s=mta-01 header.b=MhW6FQui;       spf=pass
 (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as
 permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=yadro.com
Reply-To: open-iscsi@googlegroups.com
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

In function iscsi_data_xmit (TX worker) there is walking through the
queue of new SCSI commands that is replenished in parallell. And only
after that queue got emptied the function will start sending pending
DataOut PDUs. That lead to DataOut timer time out on target side and
to connection reinstatment.

This patch swaps walking through the new commands queue and the pending
DataOut queue. To make a preference to ongoing commands over new ones.

Reviewed-by: Konstantin Shelekhin <k.shelekhin@yadro.com>
Signed-off-by: Dmitry Bogdanov <d.bogdanov@yadro.com>
---
 drivers/scsi/libiscsi.c | 44 ++++++++++++++++++++++-------------------
 1 file changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 797abf4f5399..8d78559ae94a 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1567,6 +1567,28 @@ static int iscsi_data_xmit(struct iscsi_conn *conn)
 			goto done;
 	}
 
+check_requeue:
+	while (!list_empty(&conn->requeue)) {
+		/*
+		 * we always do fastlogout - conn stop code will clean up.
+		 */
+		if (conn->session->state == ISCSI_STATE_LOGGING_OUT)
+			break;
+
+		task = list_entry(conn->requeue.next, struct iscsi_task,
+				  running);
+
+		if (iscsi_check_tmf_restrictions(task, ISCSI_OP_SCSI_DATA_OUT))
+			break;
+
+		list_del_init(&task->running);
+		rc = iscsi_xmit_task(conn, task, true);
+		if (rc)
+			goto done;
+		if (!list_empty(&conn->mgmtqueue))
+			goto check_mgmt;
+	}
+
 	/* process pending command queue */
 	while (!list_empty(&conn->cmdqueue)) {
 		task = list_entry(conn->cmdqueue.next, struct iscsi_task,
@@ -1594,28 +1616,10 @@ static int iscsi_data_xmit(struct iscsi_conn *conn)
 		 */
 		if (!list_empty(&conn->mgmtqueue))
 			goto check_mgmt;
+		if (!list_empty(&conn->requeue))
+			goto check_requeue;
 	}
 
-	while (!list_empty(&conn->requeue)) {
-		/*
-		 * we always do fastlogout - conn stop code will clean up.
-		 */
-		if (conn->session->state == ISCSI_STATE_LOGGING_OUT)
-			break;
-
-		task = list_entry(conn->requeue.next, struct iscsi_task,
-				  running);
-
-		if (iscsi_check_tmf_restrictions(task, ISCSI_OP_SCSI_DATA_OUT))
-			break;
-
-		list_del_init(&task->running);
-		rc = iscsi_xmit_task(conn, task, true);
-		if (rc)
-			goto done;
-		if (!list_empty(&conn->mgmtqueue))
-			goto check_mgmt;
-	}
 	spin_unlock_bh(&conn->session->frwd_lock);
 	return -ENODATA;
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220607131953.11584-1-d.bogdanov%40yadro.com.
