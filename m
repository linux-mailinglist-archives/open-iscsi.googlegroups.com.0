Return-Path: <open-iscsi+bncBDVIJONZ3YDRBXH23GNQMGQEOV3J7IQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C36A62E423
	for <lists+open-iscsi@lfdr.de>; Thu, 17 Nov 2022 19:28:47 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id i26-20020a056e021d1a00b003025434c04esf1739417ila.13
        for <lists+open-iscsi@lfdr.de>; Thu, 17 Nov 2022 10:28:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668709726; cv=pass;
        d=google.com; s=arc-20160816;
        b=IDdd/yant36VlYXnHODpWzVGzXAhL/wr/h2Ovp4qmNaSodD8rqw9bZ9V38z1xFSpZ4
         92MNy8jpgcglQ7SIYRr3flAds4v/k0rw7MlE9A5O4n8T0dzBk2+mzdYIRdtOeEtCbNOX
         H0mvOkobnlZf1IXQkVSayIXSBv7xMkwoEDBpWbW1ZIJ8BvzioYJBp+Fxcl6GCy+FYkW5
         f8VuGInbVUGkMDCEijhuWVgiLQoWF0QoJXIvBMHCPYbcYK68x3/L5cNlP18iGrDGmePC
         i+GAQxnbCyvtBhtKgbA0tXUXAXZe0TpHSa7SpN3CStS409sWZTgpf82T7/p1Y+2RmyOp
         gJDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=z/VQPhsjznwK6oIr+lpZqgmTYkyO/oYVVcEeMk4qwN0=;
        b=ZsGpDqfOdyR4XgIRZfSuJWiKBcAuspn/2lPNs1gIcL560sz20ReqZqgDujTy59AXoX
         2scqclLDT3++bJD12Q2KN51CjQ2JgZnM9BsgXhBhdQmJPvDhyauR5In8KIkjCMf70Esu
         aSZ6aKSE51W28FStsodyVks62gggmjriv4Sl7ZsRiDDWkk9o/WAvUfWt52v6S6ytqnj6
         MpNAlpxz+DL2YlzVaJutELtCxVEhq2U5K3Kf15WNmHjZeO/A4Ap4zCoNxJlVASyd17eR
         aYrW431jFiekHk+/19g+O8F+hDUBS4i3yNwFR/Px0vSj4sBuudZEkc4BuYIsnrShGiJJ
         iP2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=KiTJWHjA;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z/VQPhsjznwK6oIr+lpZqgmTYkyO/oYVVcEeMk4qwN0=;
        b=OaufsQ8d416jY8lxIcCDeyn1PAzVnv2XTg3u5dNP+fiAHSbSK1KZbKaDhiXglRoIPj
         az+G9Hf7azO+bcqQqhWIhYT2/wOax3KGlYsXzG9sJiSa00Q8bo0tIPrfm8yj+gmX7wod
         cjQk0qMaRsNK1k/1CoA0NJYITatdwFbzkDsEZ5hWOoSSSpLtu9j9FPHpA/9R3H3a07xx
         kxkYLEE/XFxe/Hq8plm30Q16N8JnXze3ZFAuHfITMP82DRMlIQN2M+pzpS+0knsH2x0c
         ZSrs7o3UOTAvzylBE8o6K8l/b4cI0bDAbIkRFy+WwZQfvB4OIJfK7D/JsXKuSembbO1k
         Mplw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z/VQPhsjznwK6oIr+lpZqgmTYkyO/oYVVcEeMk4qwN0=;
        b=bw3rshlNdAMxtA0+Q2RJbSQTVVPk+nqLfTHmRXtt9D/88hV+StcgP4FG/pdjEaF5cJ
         ZPbmFj9oiXB2zLA4muEuq0WPyt+5FjE44XcQpIvYtmzM6//BezYeWblzuyoGllGZHq4P
         v9TJWnIJJxI78Cu8RkC+PuU1ZOEGRk9sBA0sgCDff5ay+cQS30I7rFE3S07Fb6SqWbkZ
         AFcTbD6yRL61PZZEs/+8JSnLuHQm+t6Z3eLyiwZfEVBAFxv8pNiTOehhbnJtSJLZc9N2
         E4OMyDEIWu1mVwc1uIBWw3zVN3vt9Og+OXVk/s5kV3S+zPMjUwkBfezYbLJe/eabLcP+
         WKVg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5plOxL0+8XHF292r4ZtIVEwpwd15uFPYSrZe/+zUNyjzVUOXBGc5
	zvwTilCZPzY1+fkKiqYZ4UI=
X-Google-Smtp-Source: AA0mqf71AOx+nGFw+UDccnzEpgVrizxlBTLT0eI+FuXtzuTkkafndjte9FBEdXDTpe7FsCqHcK/jfA==
X-Received: by 2002:a92:c0c7:0:b0:300:d39b:4d03 with SMTP id t7-20020a92c0c7000000b00300d39b4d03mr1842336ilf.137.1668709726135;
        Thu, 17 Nov 2022 10:28:46 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:b713:0:b0:6bc:6044:840e with SMTP id h19-20020a6bb713000000b006bc6044840els309305iof.0.-pod-prod-gmail;
 Thu, 17 Nov 2022 10:28:43 -0800 (PST)
X-Received: by 2002:a5e:9405:0:b0:6a1:48d3:149e with SMTP id q5-20020a5e9405000000b006a148d3149emr1981393ioj.136.1668709722976;
        Thu, 17 Nov 2022 10:28:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668709722; cv=none;
        d=google.com; s=arc-20160816;
        b=WFNBQHGHrVDclE9o6wsNwpj//zDiklGNKzBYtHg6etThHtFwVRbu5tECpFoYaKDz5O
         kxc5VyLzX1wlaFxJ0DpooGAkYAl0JBodYJKqDdmfvlVW7vEIzmczheVlez6a+E/KaLqp
         RfqE+wNWE4bN9q5gYqM9zqvLGqeAjmWSvTYfVEHEvgeeYGLVdd9GowDuI3KBgd3PtlVP
         BX014UGHj552BW9aR7gEo6SgZyQBo+8Rmu4AAZFIfr+caGhMqXNfZTtVZKds2ebJ0j4e
         I5BKi/ajOvCXbzHn2KzAbLremYAJUf346AwCrRNPWVAmt5omC4FiiN6k1AIR0M+HERGy
         AEIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kDCnt0JWtMFLRcavd3UttqPpu8I7mE4yCGzQz1II49U=;
        b=errZStwaN++OO1gxg1TEmDARD2mgJKEyJkULFMJV4eNYZbM6t8PbBhj0aXrGpNu4DM
         zcSf6MalEinOZQ29F4flv3TnBtR+QtA4RDlCBy3DEL1QnSUZFWApB6HLyFHyqqbSIHt8
         tVjHx3ibxeAQpsKyVICbDckhEhfFBpcNJuf87cCa+uHFi4t1O4q0JgydSZuvdDiy6klG
         IRwPUSoqfBvJdfRA+xG0goBNyPSSVqR5qZwuXj9lyf7voPYxnPzHvPAx6WNw/df2IGDz
         bu5fgQBPRmZjPWmIdv4hzWhcwL3JvNVM6Z01ryOafEY2PdP4O15fEU9pr82dD7Ga2YNH
         TZpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2022-7-12 header.b=KiTJWHjA;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id i1-20020a02ca01000000b003750f38186bsi78110jak.1.2022.11.17.10.28.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Nov 2022 10:28:42 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AHIPXQE014158;
	Thu, 17 Nov 2022 18:28:41 GMT
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3kv3jst0mb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 17 Nov 2022 18:28:41 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 2AHHFlNg008684;
	Thu, 17 Nov 2022 18:28:39 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3kt1xft5rw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 17 Nov 2022 18:28:39 +0000
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 2AHISanw025586;
	Thu, 17 Nov 2022 18:28:39 GMT
Received: from ca-mkp.mkp.ca.oracle.com (ca-mkp.ca.oracle.com [10.156.108.201])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 3kt1xft5pj-5;
	Thu, 17 Nov 2022 18:28:39 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: jejb@linux.ibm.com, michael.christie@oracle.com,
        Zhou Guanghui <zhouguanghui1@huawei.com>, lduncan@suse.com,
        cleech@redhat.com
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com
Subject: Re: [PATCH v2] scsi: iscsi: fix possible memory leak when device_register failed
Date: Thu, 17 Nov 2022 13:28:35 -0500
Message-Id: <166870940541.1572108.9806675424150133794.b4-ty@oracle.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221110033729.1555-1-zhouguanghui1@huawei.com>
References: <20221110033729.1555-1-zhouguanghui1@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-17_06,2022-11-17_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=923 bulkscore=0 mlxscore=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211170133
X-Proofpoint-ORIG-GUID: n2GK2G4JFAVLxdI2xOQneRjpXrWYW8ln
X-Proofpoint-GUID: n2GK2G4JFAVLxdI2xOQneRjpXrWYW8ln
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2022-7-12 header.b=KiTJWHjA;
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

On Thu, 10 Nov 2022 03:37:29 +0000, Zhou Guanghui wrote:

> If device_register() returns error, the name allocated by the
> dev_set_name() need be freed. As described in the comment of
> device_register(), we should use put_device() to give up the
> reference in the error path.
> 
> Fix this by calling put_device(), the name will be freed in the
> kobject_cleanup(), and this patch modified resources will be
> released by calling the corresponding callback function in the
> device_release().
> 
> [...]

Applied to 6.1/scsi-fixes, thanks!

[1/1] scsi: iscsi: fix possible memory leak when device_register failed
      https://git.kernel.org/mkp/scsi/c/f014165faa7b

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/166870940541.1572108.9806675424150133794.b4-ty%40oracle.com.
