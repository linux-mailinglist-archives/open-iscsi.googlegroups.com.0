Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBWVHZKIQMGQE5ZYOXJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA7E4DBCAA
	for <lists+open-iscsi@lfdr.de>; Thu, 17 Mar 2022 02:50:20 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id f13-20020ac8014d000000b002ddae786fb0sf2565485qtg.19
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Mar 2022 18:50:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647481819; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2ffbHC+E8/YTo7kZ4+ZUkV3fJky0CVzwi23oA4hwLuLTRBiaRz4GlKrubAV16CLfh
         Mzq6WMSxSI/a3hCJWjzypq+wTa2FC9sDmXN85GFtfueNuIjY7WZMLslOUn92G9BDqVBA
         s/nNeQlXTa1LE3ytV6qeNQycEF8Ds4CKv3wSfRmLWKlSEL2PHBk+m9C2JbGvjgQEXr2z
         ExNZJq/cJgAoU0px5JYXGVmGhOpZY9a90xUPyDlUJIiqtQPY4HZ1zo4e1a563k1t00qB
         uGlfsGFJGAJVofLtIjlzvweAb1HEGsDlB9fOOXkip2lL10MdVa/ti17JJzeEMi1T4wAm
         PDMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=Xv3D+OfdCQRYP3sjz7FZHSnqRp0g2u+kg+AuXmtyvF4=;
        b=p1a6/PmguuWLNA2MTQPwe34KiX6HqtYYUOyrTLRpKQCiG8IQHYC48CxDTN0Udl5to0
         JmfAxdekBprGzHJO9BKwMvXEjUzAeP6IvPJ+9MnxDBh9uuF1K0s+zVt5Je4Mo6xksjJF
         9g0SMBHBymvRj8haMHZXlnCrevztHIfmw9ZyCxmVcob+0X0PnHMVqxF0sVHwdP5yXx8h
         Jmv7KjGPlka5/ALS1cgUXHpLdbwpiUFFS4JwhLWta7GfGxQ4vM4WdUlQfYFZpYoGZMTX
         TaCGkIsw90BtEuwSpMXpMSfx572+VvN9l2I0z9NLetPSLdnU8G0DktEAHeOsRhJz+JMj
         7qzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Xv3D+OfdCQRYP3sjz7FZHSnqRp0g2u+kg+AuXmtyvF4=;
        b=LqmKbW50ycIOPjTl2De5ccpjCRkFVH3Rxd+snWk4Qyhp18Ml5oUhJoiK4le1fprSnQ
         hSnl78l61z/90bnzR1ziQvDWsM6bZJNU8fa4KjGhg3mOiRwCWCTKyjiDORwKMhN3mxlx
         CJZSvNakPsR2U3Ngzj5EVHKXz/X+zP5c8WVcMojo2X9VokLadCfSZRGYUtqlPyzUFanZ
         hZiXiTL164umaa5nYKqZab206TVYZV2ZLLTWHPV+HKtfwndB7m9rOM6biWwbQejMSF/9
         Hv0jPK8r7czSK++8IeNFiBrdghjiC0IlRDUc5FgmSCeE0MH4oUjOEK0sFH4TH5kNCwum
         nZIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xv3D+OfdCQRYP3sjz7FZHSnqRp0g2u+kg+AuXmtyvF4=;
        b=fxA5BwLOajnSdGbIZPcWR8VKD0ZQiQGutarXiDU8uxp4yVWX/cGQH6L1apePZFt4vj
         YtPwuDcWMRAN9Lj/+iSpAnjuq5jtkF/tTQc6uuo2kFjJ5flx9Lz1JOfxfC2ZqzsDuRg/
         UXooEwaTHYH1h7fhG6cdvt+h0CZLJIdiXf8u3Dv/W8leKhQKFQBPjJ4KTcasqRpj+wQi
         Uw5Vf+hEC+L+fn1ETy5Ay/g8otjyBT7gyc6sBRBtafRKLTUpHp4k+S4Fp6ts7kIZIFxp
         2f3+lzXiUjDdik3t/gsdYJPsD5pfvltdIeI4/O+a3kAIRVy3QXrku+Jqm6UK9jzRAo/Z
         7XyQ==
X-Gm-Message-State: AOAM530RxyPL1IuZJa71cJQAmTd1aM5nOyISkej9g6THcPoXmstOHBB3
	NUMGZ6CN7ubdY465ckqw4FY=
X-Google-Smtp-Source: ABdhPJzLYQSRIarz8GOR0TuKd1U/tihE0VPILQbyoqWYLNyXSt7SjKyeEEl7J6CJ0emkJ/mkowCeug==
X-Received: by 2002:ad4:5ba8:0:b0:440:b1fc:922d with SMTP id 8-20020ad45ba8000000b00440b1fc922dmr2002593qvq.26.1647481819109;
        Wed, 16 Mar 2022 18:50:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:401b:b0:439:f5c1:1370 with SMTP id
 kd27-20020a056214401b00b00439f5c11370ls1553605qvb.1.gmail; Wed, 16 Mar 2022
 18:50:17 -0700 (PDT)
X-Received: by 2002:a05:6214:226d:b0:440:eec7:d8d1 with SMTP id gs13-20020a056214226d00b00440eec7d8d1mr3878qvb.1.1647481817732;
        Wed, 16 Mar 2022 18:50:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647481817; cv=none;
        d=google.com; s=arc-20160816;
        b=MLOrGrL3nnSBx9GTtT0Dgqgpqka8A/1vzYeCSluVUb2u3YsNWCXi1NpF2ynPjU6IOl
         tfh2lVtEJdfycrT2cZvpqi4R7VNY8CGdP1N8tQ7HD2E7jgw21v2RxB1LJ5+gACU0QZO8
         aKw1+gfqbNWItNG9MnCUyrLp24MNMjI/f1eRI1RFPXH0HD8bNboHm/NihM6C8Q6DBuf5
         v1ThrCpO5bRZWzri+DoW0T7/9kwhqB24dYUu4LDZXAlEmDTYdDhZoysE+ZadkIx++a23
         gAFgBjvTYue34zcdIFUCeXsplk6WDUhW/2AV1uZPjYXEp51Ckizx/Rcew4bqG88xtVhz
         O79g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=D+tSBFSRNUZ2MTjomhAx4JSB3aQKurt5a9cW2dTooXE=;
        b=Abb5zEhtCo+ftEmuezkucqkAQH1hEwKWqzrpb5rCcBv8mH64nzYY+fZiBXi3Ud4nri
         QWrD8EkrTVoEuI99Laa1gHLcWFDIFePlLqi/Hkk/LxE17SAXDrtDqHn3aqt1KlAG33+N
         Pt235NGQEV2v3OMEngGrtl7ihdIyXkFEaJ0tIhSSBdAEoUv/kpB+OqWmY/cWczKlIvlq
         XiIeL84RLuSy2TgxuuHcTIiahnE7i0v3pHd0T2P1VsqieYboPX3lIeNRUpmFz6EhSOds
         stQMl24iZPaI2HrBgY4I3symE9dlmjvN8+x+i4iWVBbK78yFtFZv0blTvCQ/I6lp6Y9p
         tydg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id t8-20020a37ea08000000b0067dda0219c9si232009qkj.7.2022.03.16.18.50.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2022 18:50:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.55])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4KJqhq1PNtzcb6q;
	Thu, 17 Mar 2022 09:45:15 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 17 Mar 2022 09:50:14 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Thu, 17 Mar
 2022 09:50:13 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E .
 J . Bottomley" <jejb@linux.ibm.com>, Mike Christie
	<michael.christie@oracle.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Zhiqiang Liu <liuzhiqiang26@huawei.com>, Wu Bo <wubo40@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH] scsi:libiscsi: remove unnecessary memset in iscsi_conn_setup
Date: Thu, 17 Mar 2022 11:01:16 -0400
Message-ID: <20220317150116.194140-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
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

iscsi_cls_conn is alloced by kzalloc(), the whole iscsi_cls_conn is
zero filled already including the dd_data. So it is unnecessary to
call memset again.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Reviewed-by: Wu Bo <wubo40@huawei.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/libiscsi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index d09926e6c8a8..cf4211c6500d 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -3045,7 +3045,6 @@ iscsi_conn_setup(struct iscsi_cls_session *cls_session, int dd_size,
 	if (!cls_conn)
 		return NULL;
 	conn = cls_conn->dd_data;
-	memset(conn, 0, sizeof(*conn) + dd_size);
 
 	conn->dd_data = cls_conn->dd_data + sizeof(*conn);
 	conn->session = session;
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220317150116.194140-1-haowenchao%40huawei.com.
