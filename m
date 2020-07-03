Return-Path: <open-iscsi+bncBCVPTQVVPQIMP7X264CRUBCSUVGG4@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CA9213373
	for <lists+open-iscsi@lfdr.de>; Fri,  3 Jul 2020 07:16:56 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id m64sf21176954ill.7
        for <lists+open-iscsi@lfdr.de>; Thu, 02 Jul 2020 22:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593753415; cv=pass;
        d=google.com; s=arc-20160816;
        b=D5P14ks5EB8FOJvZJFWX0lS4mihaksO1EgipSTalMWFqS8QqC6UH0gPIRNxhAX+HP8
         iIzOTOVMjIOBO6usazStWvYEBWLEvsJ032xkYKO1T5VlIcgluLUEEaEabd0CuJBH0GE7
         Y4Epdk9T5/QDmkb/05rT6ovDS/ufJTL2NiNrAmdxgZmY7gMk1SHiKYnrvEhUBYE+cD7Q
         33QU3UCbO1JweUaOAuuxtPzFIfor9W0ATae99H+y9IafNncjsqm9ZKm3FFWBTdcbeEdg
         x3xitJ3QPk5u8FWq0DfkB/2Q3CsQPtMjQIIs/+B7xqc6yt+uw4oKhw7PcV2cTGxXZmO2
         SIHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=7cRy0yYPVDRZoorJ4YQV6pJ5lGZTl7YbFnvh8xvkWGQ=;
        b=m0EuyFWaVDlrp0qMqCMnIdA9TSIcfBon+cQBxlVNIysqsh9il0XsZc2YMCh2W85Oqe
         S29xvtWqvr8p2eazANGo0Yy3Ogj7GuqEJrGlQHhAkqxrtAm8WtoF34zLBTTq5IydVtq0
         WPEThBAXgTkw9QXmFkLcNdC4Pz3IwUHhnxhnTdNHYHujuUR9ouziOF1/PqFmnCatuiLU
         SNa9oTVseESLaKw7AMUAVWy4dNxT86Jg72zPzvuRzeD9AbGbWPCmHBkA2vfO6UG4no8M
         bKr8dVQtUC/7/zZ+LYNnaDCSUnAPtY+OdwTcYt106bbxTGsy7TZOzhfC76aEEIhxfJff
         AyNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=JjjTKpLp;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7cRy0yYPVDRZoorJ4YQV6pJ5lGZTl7YbFnvh8xvkWGQ=;
        b=Hcq5y1Ub6xvwtkOPvoFwa3bQAnwanN/H79bMJHwwOWtEPK8O6KUJ43GcJY3WwWlR38
         dEhuao9T0rcv+PGS6+B+QDGiow7c1clM54K44VR3JP2aU6y1FjTefQWzx8fKFrPz7eBB
         V5r1l91u8js26GhfF5KAF0pJvvtrqiujb095gOwwm2EP4ydKh6+4rCSzvlnRrGneuyiT
         ouZ+xfDnDUnPa5xAfafNP8+BDs6wC5T7ls9liA8zGklKzsc/U9owFk5UAbOBD1VGRdxH
         uaKUGWjCGEKkVHPxjnlqIhEioJlWz2mxgEudUNehghZUTXUijHEIe9jNAXddAvUhl1w/
         LxwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7cRy0yYPVDRZoorJ4YQV6pJ5lGZTl7YbFnvh8xvkWGQ=;
        b=i2cQYPXENn+bfCSZzXqc9B7bkRNdpU/s9X64hziKknfxBqYY8ACXwb8z9Be/ed2BGh
         KJmODw/OboezPcZux/kSWSOR4FJoxBL7u1++0mEafvjmIqEs/epCuFBOdiKHXBWI7x71
         9H7DW8yY8JkECKud5sYxizEeskAu9i7Biigph1r3xfSS3UGIhdtoaDRbYeXbqWaGI3oX
         ZVeLhGoey9wCBqkX07e2JTv0DLK+jrbeIMoW31ke9h2cOZ5sdHHOabp2tjU86M2aSMIJ
         zDfNVh1gKNJpLfWTgGef3bgzv8o0SxYm/bLB88oeQpRZYkcjoiiXoxEkTh6lR0lOmFiQ
         nmxg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533XKhd3UDGN1IOC+92D+HmEoY2B2mJfI4ml2z0d5K+/9lcZ8yXQ
	EYyUVjIx+bvJJIaRtiKC7bw=
X-Google-Smtp-Source: ABdhPJx3+MBpyk8L1vtnRlpF2VlaIfR1KZQDrRi3H+XarP19ZjIPSFNLwLDwlbdIWoXUGEtX8oCJmQ==
X-Received: by 2002:a6b:b457:: with SMTP id d84mr10803427iof.21.1593753415330;
        Thu, 02 Jul 2020 22:16:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a02:7f13:: with SMTP id r19ls1200739jac.6.gmail; Thu, 02 Jul
 2020 22:16:55 -0700 (PDT)
X-Received: by 2002:a02:844d:: with SMTP id l13mr37804959jah.105.1593753415004;
        Thu, 02 Jul 2020 22:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593753415; cv=none;
        d=google.com; s=arc-20160816;
        b=a7wbngHPfCQXJ8gbCz86dukkyQpXybCGNnfOVXJ+OfT0Xqwe0cCmf7I+WsRBogHYFT
         TX9dnjo33whjf4CafRoJC9aCsk7f+oO0fNTC04SNEeC1+ekdFeP413ypP9INe1sX2My0
         51H+R8OQOHjluFe5xkaawMBfEOHajIqsLnM48hldtDEMPzoJWDJBiIp4MpZMJo9Xmafi
         9UnQJzXXwZNsIvtNS+OCgH34OUHxzAfjR0olNA8/vgWJt1ESvQmlnBDIjLYKZtZPiyst
         8pDq9ih79u6R7v+i3H5EOy3KhjcLkYRD1cCTVuVdnbi7klbCXO89bhoN2BbKN2d2gd0W
         ORUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=arddawxe/NarPsuArRlIV1nbKL4dlA3Ya1GT5IfE0IQ=;
        b=eTBVMXgAH8F3O2hN1slAPzhWZcNMRpgav6OVLsHR0E3nWDLYQCnX+sxXTO+UhvW4l9
         U5ysR191m7uoo4r3nNRmR4Z/+PWocHy/z6t3KThF3uub7MGd/SNnnBrBictf2gUDA/8Y
         iKLOKLij9s2POQ7ktQ47sy3/ozM5OUi3cqiu9Y9SUkS/gbGEaZW6YZA4dEn+L4bqYX8R
         pcXfNQm594WLNXaPBXhhon2N/rECqEoLWRx97yuAR2nwNrmHyZ171itac/27raw/7qSK
         3MVX++uR6wEUfPnBwXxVgFOulS4HZqfxiKLXshC6GAgTi7bwJgs437Xed/bOq0PnDleT
         Ll7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=JjjTKpLp;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id v16si688159iol.1.2020.07.02.22.16.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 22:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0635D0nS190615;
	Fri, 3 Jul 2020 05:16:54 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 31xx1e8ppc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 03 Jul 2020 05:16:54 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0635CtQM017097;
	Fri, 3 Jul 2020 05:16:53 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 31y52ns3ju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 03 Jul 2020 05:16:53 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0635GqAG003089;
	Fri, 3 Jul 2020 05:16:52 GMT
Received: from localhost.localdomain (/183.246.145.16)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 03 Jul 2020 05:16:51 +0000
From: Bob Liu <bob.liu@oracle.com>
To: linux-scsi@vger.kernel.org
Cc: open-iscsi@googlegroups.com, martin.petersen@oracle.com, lduncan@suse.com,
        cleech@redhat.com, michael.christie@oracle.com,
        Bob Liu <bob.liu@oracle.com>
Subject: [PATCH] scsi: iscsi: register sysfs for workqueue iscsi_destroy
Date: Fri,  3 Jul 2020 13:16:03 +0800
Message-Id: <20200703051603.1473-1-bob.liu@oracle.com>
X-Mailer: git-send-email 2.9.5
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9670 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 mlxscore=0
 adultscore=0 suspectscore=1 bulkscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007030037
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9670 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 clxscore=1015 adultscore=0
 suspectscore=1 mlxlogscore=999 cotscore=-2147483648 lowpriorityscore=0
 malwarescore=0 phishscore=0 impostorscore=0 mlxscore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007030037
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=JjjTKpLp;
       spf=pass (google.com: domain of bob.liu@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

Register sysfs for workqueue iscsi_destroy, so that users can set cpu affinity
through "cpumask" for this workqueue to get better isolation in cloud
multi-tenant scenario.

This patch unfolded create_singlethread_workqueue(), added WQ_SYSFS and drop
__WQ_ORDERED_EXPLICIT since __WQ_ORDERED_EXPLICIT workqueue isn't allowed to
change "cpumask".

Suggested-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Bob Liu <bob.liu@oracle.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 7ae5024..aa8d4a3 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -4766,7 +4766,9 @@ static __init int iscsi_transport_init(void)
 		goto release_nls;
 	}
 
-	iscsi_destroy_workq = create_singlethread_workqueue("iscsi_destroy");
+	iscsi_destroy_workq = alloc_workqueue("%s",
+			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
+			1, "iscsi_destroy");
 	if (!iscsi_destroy_workq) {
 		err = -ENOMEM;
 		goto destroy_wq;
-- 
2.9.5

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200703051603.1473-1-bob.liu%40oracle.com.
