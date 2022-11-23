Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBYVA7CNQMGQEPGQRNBI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DCD635CA6
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 13:21:56 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id y5-20020a056602120500b006cf628c14ddsf9047938iot.15
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 04:21:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669206115; cv=pass;
        d=google.com; s=arc-20160816;
        b=XgtLEj7EVLpVBSpCPUe8M+O+p5cOkuhKgQ6ByoNiX5GYrokIZjJhp4P4dTCrjnrEeS
         KVLgMoRpBrfMVM5P448STxSfXLQj8Cj9cOqW6d41ZyIiqEsARQ+kt9oJ2haKN4WxaXXM
         WzoSAMbtGnS2ZwSKGiiKXGojzdl5adrY2EpxoaoNn4YEwJtxODJi9jU3we+3tNknbHs5
         DjPO/vg7x0AAjW9rv7FrBZCz+F8J5ik/p+g48qUsQY/i0G1cUX0mJkuPSmEZ73cgKjy/
         AJ5LO0v5fTa4XVs4GZRef4Z/nM5dy1qvJinSJ+HLrj235OMWBxFPH0h678cX+9UA+SMC
         Ma2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ysB2AgXO5a4Add1N9P2i3elwC73Cu7rnbFM4vowlg3o=;
        b=bZEZ7OVFbjclyyOq1rpgf80M+DYbwN6paCRa0alNTciflkb71DuysaH8gMI9pglXI6
         z7OO6m7YKu1w5x9VgYm/7hNKFEIqGpNv1k0d4LQXti2ff4Bbajo6ii+rZ1dd7JFm2fdU
         uw1NoQeiGzdXjM5RkM0VVwbxASIqhw7tnuGabH61YUScigopcBdXOoGxNDSV22L84Gpc
         QphSIf2rl9PrLcckzfUo2BLprm1YL5o8Cjos9rw+IIFVoBu9BbhmMmUoDsiKRN5OLh2x
         5+EAQf/vXQmcU9ehce3LlEJ2MUuo/yQKizZlPrxyqgVjY+pCn5WAS7WXhqfsvJQzYyiu
         6LXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ysB2AgXO5a4Add1N9P2i3elwC73Cu7rnbFM4vowlg3o=;
        b=hsXCLeNx+HMnMCfSm//9c9KkRg8HaBWY6adIqRIebMSryVR+WYndNDHPPXhWpASJH3
         karEG6MeZc/YPZQv1Vh9MjvwlWEEbSKhTrin3Ot3MpzN6kHRZmKArsZFFQHHi6zLKQEF
         x68qmfQi5SV/riALYwobtkdjZiGT/DrSL5Coj0Uz4sk9zlmcmaGfMmuhgwolfCSQeOcO
         Aby8kVBhpUAiaSH1BkX9pF37QTKqDZWTnIFgBgqrJZn7lvwzXqEHY5Cb3f1LUSLTn7Tm
         qB5FlHqzDWCiJ5+b+O5hoMk7ve53j6LsvARJEGAaK93vzPUdauOC6eAB/yPnoJO0WDBg
         7Cbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ysB2AgXO5a4Add1N9P2i3elwC73Cu7rnbFM4vowlg3o=;
        b=NzrDjOMrmJBkjHlU5jyAX5O5UZhJEm0eLcvU4k+x2/r7tu2MCVSj6Rt8UWJKJB3w/6
         DjAkKgHEfD4D5N6TU3+GqSH4ZaBj0Dd7in6JCPrLLvPhY99JRO8Jm/msH7aFSqOClFqZ
         jcurNQDUcSVGTB8Zqafd8jiFQWcR44veVQ8G04Wwvb3mLC9FPP59A5+jltIR9TonCwei
         1LY49H/16xx57Ft3mjc9HGbgNVXIdoSMsj08pPwrqBlaIv7HX/Bu+8vhceLHA6W2uGSv
         E+jpuMtZqeXhNY1WJ3tvX1C3prwdd6EEqyvQJE48rmzCsvf4A45i3IMNDLPSuZo1/dAU
         n3zg==
X-Gm-Message-State: ANoB5plr+Xz6bk0/SXpjmw7pskbpbk1+AG+DTeqvoEBsGbZPjMeGXR/p
	14iZKFcxDVebnmn1iq9bgzA=
X-Google-Smtp-Source: AA0mqf6IGcMz/XL/8HVvQoo7OZ4UWC7bvTNR503jS2jcFrz5FHx5t7oOuBOKq6lmqTOBn0rWYXCpWQ==
X-Received: by 2002:a6b:db0f:0:b0:67c:2abb:818e with SMTP id t15-20020a6bdb0f000000b0067c2abb818emr8351102ioc.125.1669206115471;
        Wed, 23 Nov 2022 04:21:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a02:228f:0:b0:358:3055:3faa with SMTP id o137-20020a02228f000000b0035830553faals3090825jao.6.-pod-prod-gmail;
 Wed, 23 Nov 2022 04:21:53 -0800 (PST)
X-Received: by 2002:a05:6638:2202:b0:375:bc14:b202 with SMTP id l2-20020a056638220200b00375bc14b202mr3891148jas.244.1669206113682;
        Wed, 23 Nov 2022 04:21:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669206113; cv=none;
        d=google.com; s=arc-20160816;
        b=yR0ZJV3WWIFq6snknvK8VZL5I0uC2sZdKBOd3N3wHl/lY83W7omxjOGxG+OQl9qIUH
         MiJjS/bYaI0EcpDvp1Tu93BBU14JxGis7NG48AUdEHVM5Po8b9yDYpARQrh0F+xRej3t
         XLtPRKCFMlF6S/h7LbOuLDmkBSDE3g1M8Nzgh+YCqWNqzGn8H8qp+Y5M078ZlMagK/re
         J9yasKvU9fj4bhPMeIoeVEfK+nJJykskOlhBo76r6AZDfbRhVj2XpDBhgQnaNC0ITEHr
         XAtCIWt54GoQFhx9/sqOUxr3b5U1Jqqjx8iLlk/mF0Q6o0Loe/ygH71FRpe1/fMlr6rQ
         HgrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=mdMLkH8WXDq8s5x1lp001lJN9pfuCaqEbEFynQkUd3I=;
        b=y+oWrspXdx5smdLzL9VbYeZmdwtAxwXgdat0Pv6NsclMiaxeNK3dFsGrdwj1ysKqcA
         3YmhPxmNfbyzfbc+L2Qhh/L0LP1FTpneWUeDj8IvJmVVzO6lY0sJFYoCfEEPMau+SDfl
         vOzBFfWrr3o9ULuLeUAOrBQBEPeC0S4qOFGvW1IDCvz5HhV2lMEZjd3Ne2RayJV4SRTU
         +PkHP58DrROWf1gaX9SNy4Zu2ar3RPxV1DYKLrxHc/Vevmpy37bRm8uKM2PCoCdzleNV
         gfMDB5TtHiL7V8YfL9PLHifhBeFIBR4QQsezEpA3VbdahyTcWXitVNrIcXPSzIgOTnBh
         Z0Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id y3-20020a92d203000000b00302c8c0eca1si474652ily.5.2022.11.23.04.21.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 04:21:53 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500021.china.huawei.com (unknown [172.30.72.55])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NHKrz6K9TzqSX5;
	Wed, 23 Nov 2022 20:17:55 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500021.china.huawei.com (7.185.36.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 20:21:51 +0800
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 20:21:50 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v3 1/2] scsi: increase scsi device's iodone_cnt in scsi_timeout()
Date: Wed, 23 Nov 2022 20:21:36 +0800
Message-ID: <20221123122137.150776-2-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20221123122137.150776-1-haowenchao@huawei.com>
References: <20221123122137.150776-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
Reply-To: open-iscsi@googlegroups.com
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

If an scsi command time out and going to be aborted, we should
increase the iodone_cnt of the related scsi device, or the
iodone_cnt would be less than iorequest_cnt

Increase iodone_cnt in scsi_timeout() would not cause double
accounting issue, briefly analysed as following:

 - we add the iodone_cnt when BLK_EH_DONE would be returned in
   scsi_timeout(), so the related scsi command's timeout event
   would not happened

 - if the abort succeed and do not retry, the command would be done
   with scsi_finish_command() which would not increase iodone_cnt;

 - if the abort succeed and retry the command, it would be requeue,
   a scsi_dispatch_cmd() would be called and iorequest_cnt would be
   increased again

 - if the abort failed, the error handler successfully recover the
   device, do not retry this command, the command would be done
   with scsi_finish_command() which would not increase iodone_cnt;

 - if the abort failed, the error handler successfully recover the
   device, and retry this command, the iorequest_cnt would be
   increased again

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Reviewed-by: Mike Christie <michael.christie@oracle.com>
---
 drivers/scsi/scsi_error.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
index be2a70c5ac6d..613d5aeb1e3c 100644
--- a/drivers/scsi/scsi_error.c
+++ b/drivers/scsi/scsi_error.c
@@ -354,6 +354,7 @@ enum blk_eh_timer_return scsi_timeout(struct request *req)
 	 */
 	if (test_and_set_bit(SCMD_STATE_COMPLETE, &scmd->state))
 		return BLK_EH_DONE;
+	atomic_inc(&scmd->device->iodone_cnt);
 	if (scsi_abort_command(scmd) != SUCCESS) {
 		set_host_byte(scmd, DID_TIME_OUT);
 		scsi_eh_scmd_add(scmd);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221123122137.150776-2-haowenchao%40huawei.com.
