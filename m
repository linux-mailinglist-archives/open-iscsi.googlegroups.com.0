Return-Path: <open-iscsi+bncBDVIJONZ3YDRB4OGUCOAMGQET7ISTZA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3D063E873
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Dec 2022 04:45:55 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id w27-20020a05622a191b00b003a56c0e1cd0sf1124560qtc.4
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Nov 2022 19:45:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669866354; cv=pass;
        d=google.com; s=arc-20160816;
        b=tHw5N1IDD1oK3QRxpZgKf21orxQ4TkkYwVouh++x2ItFIHd3TKgMQ7eQSrF2KnElfk
         faEyftRcViaLhCYdxrQoEGYXT5iLAJ5Pf8YFiRAg3oN6P1GsF84TR9foYq8hvo6BJkg6
         78qVq8d2P50SpUsQ7Lc20n9qUsAgHMVuP+7nDKbY1SWN3gMPv71scgGjcnTs8Jjl11//
         8vxzuN/lPjf6QKnbfb873W6Ks3jZeaxtNZjCB7YoOXEXJS06L4p9lwpeF8DXkX2JMcQf
         ANXB8swjOImxucSkzUIQyn3WwKfg8W7VWtiehd39XuQNiwX4B5SkJouY+OA/Y6cj2mvr
         DBZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=l2iVvr3xW23X+siDWhTPk0oEPOmGfQ3zT3+R3dUuFA8=;
        b=OlKXrmO8POalLoBWsvspcNFKwmyFqBVpINEQqikuA96vPF2Pxtpeew4lSyv2+pfjbR
         UANbp36TDTeDbEtPcR8/OaLLgMwBHhuoAmX0BGW6Vyjs40Jqvgp3ey06mzyoh2zMGt8R
         1b3aF5jfGzeA/6RLMLtDv0QpQclqQF/UleezCbWvCUZwIGr2bXUoUCADIFr9DXYGJj0B
         tZUiAAW8p6CD6UEMbbv7R1Ph8PUHtOUl408vGdmmdAaSZzdTu3VfOsewkafg3VLdGr2M
         jUKobnw6ELJP9YZgC//7mz5SJdyJYqVaTYVrS3j6YbOFt2hOR6y1IWsoVGuK0hC7T9Ni
         yuyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=jWdrEM9G;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l2iVvr3xW23X+siDWhTPk0oEPOmGfQ3zT3+R3dUuFA8=;
        b=Qt1/6ui7tpUPD2YfkSMPJ+VhJRMjQZLdKX85nkmNbxjJ+ggb0r411OyUL3IOhBd//+
         BDB24G/KMiOmyU+zF7L1s2QGBTiI1maNqrZOZJxY6Rg25v63+0iCoZf/exG7pDGi3BcA
         4p2V4dKLhd3DBpG6A8scu4SZKVZOSwc1koxaGZoyyFCwXSVVIQ38INqdoF83Ykn0OT4P
         /98w5Jn6Vq4A+Xjywxo/PohiwO39oq54PvYW5D9hHmQ6eDXlHYZSZubx78VOuOVz2AFE
         llXY2+D7ybh2gIs8YqZZAI3qqPPOxc+TXXgtoA7fxeqleH5Y9u4QxQx4ki2WSjh4jILx
         vrkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l2iVvr3xW23X+siDWhTPk0oEPOmGfQ3zT3+R3dUuFA8=;
        b=3zS/dpgBZLAQtVJHndHhVWTX9ikiT2Oml/6GpmMylCCghzOzbyNSYzGuqkrlZSWPMa
         iz8XvzAEEklkm9ZNCX/3L2vP47SVO8MTnEUNB/sAZcG+k6uQO75CGw200ujGQEfm+dOp
         aU+AkQOFOVENhEa/QBmbkTfK2pxmcadX9U17PmJ4Iu2bSBhBw3pDPJvOXo1zxqfI7yca
         1RqFIp82OTxMRrm0AtihnoHyv+poyX3b5G0Bx83Yeng3PhOoq2svyOvhinNWst0cgAfd
         GJSRg3bKt/2qQZZDeiBxusWQtIs3yL8qPOIV3ZH4I0hsdtwva5UE1pvtnSGavJD/3w1y
         Q1GA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnHZcqY4S4qxoBpvEUL1pEJadwkPQWjgqFvd5Ndzwae1/x/FIhA
	aedMplgO31pltPKJ4m2c21E=
X-Google-Smtp-Source: AA0mqf6zwzsW4uO1vP/FM9CvdTJyjhiGTOzEdlIaSPfyicXaxVJpz1yhJaT60qze5nh0mO99htoDaw==
X-Received: by 2002:a05:622a:4a06:b0:3a5:410c:bb77 with SMTP id fv6-20020a05622a4a0600b003a5410cbb77mr59991984qtb.266.1669866354524;
        Wed, 30 Nov 2022 19:45:54 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:b35b:0:b0:4c6:8368:e076 with SMTP id a27-20020a0cb35b000000b004c68368e076ls404429qvf.9.-pod-prod-gmail;
 Wed, 30 Nov 2022 19:45:53 -0800 (PST)
X-Received: by 2002:ad4:5849:0:b0:4c7:933:144c with SMTP id de9-20020ad45849000000b004c70933144cmr12440780qvb.80.1669866353112;
        Wed, 30 Nov 2022 19:45:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669866353; cv=none;
        d=google.com; s=arc-20160816;
        b=TuJQi1yttqTvmFbuznVdx99heSVA13WxuZxudPcuJ+HheGE8EemSsgO8P5x8oA35NH
         WlePY9jLBsPMsCOf8SA16WG/hIhn8ExukfeKthe1369q01NAJiLZRq2ePnbw/HYsqtov
         D+z+xncYZdz60ZFRFvdriBjDEbTkCT3fQR7/l867zFI0MfeCZo7zOEP7bqNki+NLZgHe
         SR0PgEvA2mx4qDFvJx9WcR3/v+U+81bs8MHzgiuxdWDfIVNPijLV5poJo5TyfYE83YjF
         OXVJngccGljQ3idPkVxiqSBeJ0jTdL2BfUGxutticDD5xx5Mq+OJQl0BmjNsnqTHAjSH
         iLPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9HOuxtlqLpi+QIZx+Ut/buTAbLcXhsgGe3xm35IuMjM=;
        b=mEo3zywszDH6Wodyed+GJdqp3hre2zCm5kdLmC5HiCsJwHYBnhz6e4WerdHamcN1We
         gIygP4neKqgTy+7UrGjH0JsqRQmWzG8Dda6q9tKnkxP31ttk2onu9XGltsqlhakXsptT
         K5znqksmnvdxKMQXVLyOGwFWtbMA0Hx6tjMvrdc6dPP+4KhBNbGc8PgdDbgQm+4KMj11
         dpZ9iL/ben7yOIsIQoD2d6AY2ELJyJg7i/3HHzyStHBZIRye57RHWh5y8HPSIptPJWWZ
         knN7Vll5aYaYH9XMA2Ll1IC/YZtFLO6Z8KiAlxddlt5C/T2U9wsXiPkyMkbUTnHf2BD+
         6Lgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=jWdrEM9G;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id a20-20020ac84d94000000b003a528515a76si115863qtw.0.2022.11.30.19.45.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Nov 2022 19:45:53 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2B133ci8022994;
	Thu, 1 Dec 2022 03:45:52 GMT
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3m40y43epa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 Dec 2022 03:45:51 +0000
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2B12qGq7007611;
	Thu, 1 Dec 2022 03:45:51 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 3m398a2csk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 Dec 2022 03:45:51 +0000
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 2B13jbpl033801;
	Thu, 1 Dec 2022 03:45:50 GMT
Received: from ca-mkp2.ca.oracle.com.com (mpeterse-ol9.allregionaliads.osdevelopmeniad.oraclevcn.com [100.100.251.135])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTP id 3m398a2cjs-14;
	Thu, 01 Dec 2022 03:45:50 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Mike Christie <michael.christie@oracle.com>,
        "James E . J . Bottomley" <jejb@linux.ibm.com>,
        Chris Leech <cleech@redhat.com>, linux-scsi@vger.kernel.org,
        Wenchao Hao <haowenchao@huawei.com>, Lee Duncan <lduncan@suse.com>,
        open-iscsi@googlegroups.com
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-kernel@vger.kernel.org, linfeilong@huawei.com,
        liuzhiqiang26@huawei.com
Subject: Re: [PATCH] scsi:iscsi: rename iscsi_set_param to iscsi_if_set_param
Date: Thu,  1 Dec 2022 03:45:15 +0000
Message-Id: <166986602274.2101055.8307199379345401690.b4-ty@oracle.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221122181105.4123935-1-haowenchao@huawei.com>
References: <20221122181105.4123935-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-01_02,2022-11-30_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0
 phishscore=0 mlxscore=0 bulkscore=0 spamscore=0 malwarescore=0
 mlxlogscore=914 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2212010022
X-Proofpoint-GUID: 52d-YXTY6K8G4eWCpHUuFoah367etx-t
X-Proofpoint-ORIG-GUID: 52d-YXTY6K8G4eWCpHUuFoah367etx-t
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=jWdrEM9G;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Tue, 22 Nov 2022 18:11:05 +0000, Wenchao Hao wrote:

> There are two iscsi_set_param() functions individually defined
> in libiscsi.c and scsi_transport_iscsi.c which is confused.
> 
> So rename the one in scsi_transport_iscsi.c to iscsi_if_set_param().
> 
> 

Applied to 6.2/scsi-queue, thanks!

[1/1] scsi:iscsi: rename iscsi_set_param to iscsi_if_set_param
      https://git.kernel.org/mkp/scsi/c/0c26a2d7c980

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/166986602274.2101055.8307199379345401690.b4-ty%40oracle.com.
