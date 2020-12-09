Return-Path: <open-iscsi+bncBDVIJONZ3YDRBLMQYT7AKGQEHGPDYQQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA4C2D47C7
	for <lists+open-iscsi@lfdr.de>; Wed,  9 Dec 2020 18:23:58 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id j24sf1624832qvg.8
        for <lists+open-iscsi@lfdr.de>; Wed, 09 Dec 2020 09:23:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607534637; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pyozfwyt8m0JbUoXkHflDiHkd3ZYLF7uC3MW2h58hvwvc1fDSjdRE9r443yT05mUa9
         CUBkdsE4lFSaUF/oV/QE3cfBrEpbnT6Tvq65IggSdlESelDC9rw2CyTt7Oxg2iItGT8W
         MMHGUub/zO+E1oQ9wVjIScGQ+bz/b12mInEwrHXaispZEz6zI4zT0DInnvepKF81S7VE
         vhjWzvZXrQfeAJx4fSuhLBq7jyDsU9E8xVYfRISBePU1uUKc+4Sq4BUghNgiXR4pGJBT
         SzAD9v3WvOc54lqPfI3ZuOrFhkWwMeD/UXGZxDkAvqKpQp66B7vs/r7wsuO+3/ixra/O
         e8LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=OU4OPVhnC4z+xVF4gPPDwhwqpR2xOmlWXoq44gNtyMQ=;
        b=K8+JGkNlyh0iMJMyYvtRIPV15NucZkm2S+QK9eFGQ2cs+Be3/MODzywKtROZuNkzE9
         /JnSbbFjP+VZmXHoo/rZsBqANDSKVQM8z0aXpYmjoZt5Oey51aoXSfvtoF5GaFXZeA4e
         9gNz07qs93oVXsQ2gwooD7wHq45NR9Tk5jpTBLw11GLKCHq9191+wcic63ASgdtV8rKr
         N8IguToj+lpTbk2uK0uW5ALxH6F/eUi0V3l0e4h8+ZEeR/4oPqnaXrbjfG6UtxhM4t4S
         74U8etvJ3LFyB2fWAAOpVL3+53ry7gRVhrbABEdQM1DvliAQUJFSDf1SvNc3L6psa25f
         +NTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ZfWAyWE8;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OU4OPVhnC4z+xVF4gPPDwhwqpR2xOmlWXoq44gNtyMQ=;
        b=sTp5f0ao93WFkkP5J6r9pKl+85Zk7bTrNUo7ZUEEmORn5aoily0lHtqh7MyeUGBTz6
         VLHK1Yr8ScVxQaQRLa9fronRBzeA+f8Jfv2Zb95j9aJZUJuyFlYKWH11Jl3uCUzuz2Zi
         9w3s+utVy2ljQVJlnjhQfo59/6liGuLK0O5RM83KGEUsvThZkdZbcjDCMVMvhKnt5T0s
         ZPKkkJWwl16lN/waXiyJMaICJy+fIF+RiSsLViY+19U2X9o0BoRxrdLHnS3vyCfrAEaU
         XUwIn347tO3wgheO5Nn2JFicKTLw6hSMZHJY2vn6y0lzDwXhO9nYcr1jdi6TTTv55kvo
         D3/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OU4OPVhnC4z+xVF4gPPDwhwqpR2xOmlWXoq44gNtyMQ=;
        b=BekwajPbTy3qVQgBb6Me180x3KqYZ7HrxEensnMbxmsNvNzu6X0+jTTjXEjjGCK//i
         7SH3F3ZcEuBezRiBiKbm70ojQt6ghP2iZUZ+lmGmxZy25HM77JpDBiwOvvbQcwxW7InH
         etkhEhXLFhjq6PlIIKwfY8pxhhIeSGk8OGZfRo2st3XwhKiDTBa5h1VTi4TCe+2k4Esn
         Px+vC66PB0NapDtrilHBKNAUXboiSTqfokVwJny76LYIOyAc6OsLDya/TSfJeMKvrYJs
         s69SnrMA7q8FkDsz3o06fBfOii0qOeFaFbh7ac3zPDvmC6arzjgu/y78HB16BibBDvbe
         fiWQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530C6D4uowi/i741JJtiz2OC/C7HG04pXEealfUxiIM+9aee/ZSL
	ZHbYjkef3X4/coxZZcjGEo8=
X-Google-Smtp-Source: ABdhPJyt0DU65AlH6jBG+0qhg81GiPjzTr121l41UrSZXEqi/YKHWpiiWvt1ovieCce4uvkZ2qcbYA==
X-Received: by 2002:a05:620a:b1a:: with SMTP id t26mr4020684qkg.129.1607534637734;
        Wed, 09 Dec 2020 09:23:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:562f:: with SMTP id cb15ls509780qvb.1.gmail; Wed, 09 Dec
 2020 09:23:57 -0800 (PST)
X-Received: by 2002:ad4:4a87:: with SMTP id h7mr4135753qvx.14.1607534637342;
        Wed, 09 Dec 2020 09:23:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607534637; cv=none;
        d=google.com; s=arc-20160816;
        b=GVI4gjyJ6eimymf0obzxCvBHGctrwCWqRJGe0zwFVxsYO46Gb0sW7myy/QOk9GHRE6
         13jCeAnoN2UvQiZmWn+iZtRqTbgqUpey9UDtk/Y1Ga9MH+h1oTSPuRhHfhApjEsisa89
         ZraxWK/aOAFMPaT+KMcijo7zMh3PCmdgF89I+TyPNTXIqFSfvayPnbdiOvGuu16wW8S9
         luD4XJit3VMEV6kJuHtfFJ8LR9PI0DVbVORPah3XQL6vZXFOkpkW0N0KJAOrVPf5mdn3
         tV3xKLnlOGLCErdPhJMXPAJwHbkYFhVETyYNPBTus5UjjKrlme2lwm5IDy8Q1kUZYyi2
         u8qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rMmfjPpxsr6u3sGGRuFzxzF7rzYtcwNYg6utZgeCcbo=;
        b=Di01vS9MxBGt5kDORPjpWJVTr1seLJBEMDswEZnaJJXrrRe1WeUMV7bbPUPuo7G0do
         jiGFvqRiYaKnAaz0IL7CP2A/2a4pYp4tczxyx2/5w+KWGb/r5df+CaxvZCHmaZIeBR7l
         4aA+JpLj5qHo0gkfACrnPKo5V78I5ORJgsBIpvuUho3b0Y1/fRnwRVuZsmk4RG1+3uFn
         4Nb4c7MhAvHJvVoCrucpWt77IDFx7KO9VP+qCxDEQQHTJzbHxVDHw5v8e8lA/Wj1Gb79
         aSMOMeiQkBXo8C8lPWwKDyWyHo+K+ilpVXXkQa3w5u1hzlF9ZCVBB5xZaqmzzWifvtJr
         we5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=ZfWAyWE8;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id w10si127831qka.6.2020.12.09.09.23.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 09:23:57 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9HJMiq058822;
	Wed, 9 Dec 2020 17:23:56 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 357yqc1fne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 09 Dec 2020 17:23:56 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9HJmkf075867;
	Wed, 9 Dec 2020 17:23:55 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 358m50wgyt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 09 Dec 2020 17:23:55 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0B9HNsB9014315;
	Wed, 9 Dec 2020 17:23:54 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 09 Dec 2020 09:23:54 -0800
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        Qinglang Miao <miaoqinglang@huawei.com>, Lee Duncan <lduncan@suse.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        open-iscsi@googlegroups.com
Subject: Re: [PATCH] scsi: iscsi: fix inappropriate use of put_device
Date: Wed,  9 Dec 2020 12:23:18 -0500
Message-Id: <160753457753.14816.8140218142483943973.b4-ty@oracle.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201120074852.31658-1-miaoqinglang@huawei.com>
References: <20201120074852.31658-1-miaoqinglang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 suspectscore=0
 bulkscore=0 malwarescore=0 phishscore=0 adultscore=0 mlxlogscore=931
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012090122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=945
 clxscore=1011 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012090122
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=ZfWAyWE8;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

On Fri, 20 Nov 2020 15:48:52 +0800, Qinglang Miao wrote:

> kfree(conn) is called inside put_device(&conn->dev) so that
> another one would cause use-after-free. Besides, device_unregister
> should be used here rather than put_device.

Applied to 5.11/scsi-queue, thanks!

[1/1] scsi: iscsi: fix inappropriate use of put_device
      https://git.kernel.org/mkp/scsi/c/6dc1c7ab6f04

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/160753457753.14816.8140218142483943973.b4-ty%40oracle.com.
