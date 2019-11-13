Return-Path: <open-iscsi+bncBDVIJONZ3YDRBTV4VXXAKGQE333WNLQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C72FA051
	for <lists+open-iscsi@lfdr.de>; Wed, 13 Nov 2019 02:37:19 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id l123sf541676ywd.23
        for <lists+open-iscsi@lfdr.de>; Tue, 12 Nov 2019 17:37:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609038; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTLjHV04hcF/9OJDHejZWbiohWRVbmXTfC/7lht/8Z9REmXitSFuoqkV5R1UvysA2y
         y2UTIuxwYOH4vEG62zzfWgdOOGjiPbmEwD9GKlLr8XRNC2Z5zVD/BpjlTbuzOSq9e/BP
         yRgK+R/0DBYGgWS579qaSgGGdCxiV9Gl9f8sQiIGjr/QpdFFo3VhsD91WBsY0shG5GW3
         oXoxLF1PaxHYwDT8qI/Eudtr8r8hD18ORjXJpg2E0gH/Q3Ibe7+yriqkLKcfhuiyAPPo
         /kxpeP82jCyK7nmlpgkhG/fSiQlyJuTdh7UXDXZ5u95Lr4XVIWtz8B87ZAn1qjUhNG3Q
         6lWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=yg12wofYFazLBt8Ku7RmyUPorsBzdc8TUwL/f4mELps=;
        b=TdeRdEGSgy/SE23M8JlXukrXGGlEJUyvWH66eTM21/eCOJgKfdSk+GAdm5KFPZ2Z/t
         kOhXcLx1A2yr5WzKx8RHPnYE9zVZW6C2h/pZQdoQJWIW3zdtgxJ2AmjgvhLJhSz/s7zW
         yQrUoWLrc1ORNEUAF0gwbYlG4OJb67wEmfyR+rHOSylk3ubAT+U3So6iH8lbqKWx6aWN
         E80cFVVUakiyW4rhRxpDe5bZrDMxKbs1K54HpjNUkJmje1Mg33NEood6PZU7c8iQPU9B
         6waX7wd0eFNSz53D4+RtIiD5ArFyCeiDHJLRzTQVoBLOnGu+QiKRzRuESXu5xnIdX7zS
         uXBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=gHFWHkKm;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yg12wofYFazLBt8Ku7RmyUPorsBzdc8TUwL/f4mELps=;
        b=PsHsRl6ACD6Q4PgB7ENKnY6OgCkqv66IYqTemi5dEaEXCKKIgnEJP9cUyyt4PrGJ4i
         JBto9UPH4cky2ep1rki53MkRB4Cwv67ikpqoyUXuKwnJBIpLNpZVOxu0R7TCoLzcKRCX
         aDppZ5/FFIT1t9TSTkNfrrE2/ogC+WmD37Sf+eUBVsG3ubIm0qQgyLNb0wODJo6/pe+l
         7RWIUQIgeGpUYx9xftjv8vdu4zMcAhz/m38rWw84LAzoWrV5ydW/K8DrwJ4Rrs1+MTaG
         +cr/Ps4wTuGXt7a+gR8+5MSY+VFjGUlMt9eTgOwPmZw2Ha1cKduuFNCiT9+OJdfa+Iff
         GUTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yg12wofYFazLBt8Ku7RmyUPorsBzdc8TUwL/f4mELps=;
        b=mo6UKTNOFWr/uX/2O5PQx6hlqTGAcPpFZTJCzZhU+OLqejiDIgdjTp8+ISbWrUEV8k
         zLYp54A+gbyatWzjbaXyNflun/h7phyvG6ho/kL387w6tX1AinkA6ouCMrds/lIKoJ1U
         +qBaSaTI5Uvl8zaj5yl1ySrmmnXWYpPM9O8xs2q0NONlXWpL1fz05ndXaRmbqqtObF8M
         iXmrdYFhJERtDvNgFok/tFc+8/DKo1f1ApOLBnmFgFJ4tujFCclUfNyCOpXDqSnUw46V
         ibCl3fHnGoTJC9xS5uHh+m8C8zqdvyeH+wB5j0nMwdtGD+Kr4KPPAYCRi57a27Xsmdha
         asFw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUeOgbQQFTTE/bvIYjXldhiTGb6rZOqM0rocmFuJP/50b4X9K2p
	s9uu+y72Bd4b8oE+36msZ4Q=
X-Google-Smtp-Source: APXvYqzMiRNryE/+UvfYFwBoeHmtQje2nyBgWzc4nvhmtOSlVYeFcGt+/D/pMLBgQIyu9P6YGhx4oA==
X-Received: by 2002:a25:b221:: with SMTP id i33mr823721ybj.352.1573609038710;
        Tue, 12 Nov 2019 17:37:18 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:af0a:: with SMTP id n10ls127556ywh.4.gmail; Tue, 12 Nov
 2019 17:37:17 -0800 (PST)
X-Received: by 2002:a81:2d5:: with SMTP id 204mr673877ywc.111.1573609037913;
        Tue, 12 Nov 2019 17:37:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609037; cv=none;
        d=google.com; s=arc-20160816;
        b=HX5Wb2xyl5WtS4yxfpMUHSTeMpuMVY0ynyYHfZrkuUV8WydEXdBw7mDSbSzbDgM1kV
         pSO6GGno90tVQCZq3oFPlwtEqtiSOfR/jxJBERvPDO8hYsR/eoQqQOoIoQEotQ/y3n15
         cZU0u5+ANOiOYc+KUBaMQzmyBKJ4c9Lze6iwYIs6+BV7+Rl2seofGwB+pMkvXgHIR1K5
         ZS/eN0EgdqrJnpKosaQbZ3qjZX8iUl555EO5X5H1K3AqQTshLWX6PrQgkneMnlhFYGWb
         nKOZrp9xVVS2Hfd6TPLJxg7fOZOs7oroicKefxGWDhs0Wo6sh9tv1dOghWq0BausyD29
         /SFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=nBEVt/y9CIbMxIiZwK0x8Vgf1UghyXUE7rZHgMKFOkI=;
        b=eN6r4zfUNmkEXAKacZTcbu1K9YDv08ChA6R+LGkZ6MUg/A/pv3VJsrA+z82drIJrO6
         oZ23XgKfVUtUhgDeqGvk5Z9W4SggBV+Qi+1DezZ74KrKFpuQ7Eq0Ki5A0dEDWfyfQHbm
         tb9NZCPjuE42NPGkSyVTuZPh/0oKy6OIKScnsDY3zUtyx6lyVWgBvzTvm4nBxA1i8tyS
         enejJN07NkivLlyV1HK29UMOsLtefdhesT/hSkZrWFqOlzCKcIGMnh4r8ZS4oxyl0mI7
         SofAAStyJAszZGkgSgRdiCxAn92wUBbtqhlz0dA9hws2/KOzdx2VUYOBAunMzqcuHnF1
         964g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=gHFWHkKm;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id u3si48126ywf.4.2019.11.12.17.37.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:37:17 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAD1YNRM001889;
	Wed, 13 Nov 2019 01:37:16 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 2w5p3qrpjg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Nov 2019 01:37:16 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAD1YJqY091498;
	Wed, 13 Nov 2019 01:37:16 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3030.oracle.com with ESMTP id 2w7khmdhh3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 13 Nov 2019 01:37:16 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xAD1b9IQ007575;
	Wed, 13 Nov 2019 01:37:09 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 13 Nov 2019 01:37:08 +0000
To: "wubo \(T\)" <wubo40@huawei.com>
Cc: "lduncan\@suse.com" <lduncan@suse.com>,
        "cleech\@redhat.com" <cleech@redhat.com>,
        "jejb\@linux.ibm.com" <jejb@linux.ibm.com>,
        "martin.petersen\@oracle.com" <martin.petersen@oracle.com>,
        "open-iscsi\@googlegroups.com" <open-iscsi@googlegroups.com>,
        "linux-scsi\@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>,
        Mingfangsen <mingfangsen@huawei.com>,
        "liuzhiqiang \(I\)" <liuzhiqiang26@huawei.com>
Subject: Re: [PATCH v3] scsi: avoid potential deadloop in iscsi_if_rx func
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFB0ED@dggeml505-mbs.china.huawei.com>
Date: Tue, 12 Nov 2019 20:37:05 -0500
In-Reply-To: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFB0ED@dggeml505-mbs.china.huawei.com>
	(wubo's message of "Thu, 31 Oct 2019 06:17:01 +0000")
Message-ID: <yq18soksgji.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9439 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=957
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911130008
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9439 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911130008
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=gHFWHkKm;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


> In iscsi_if_rx func, after receiving one request through
> iscsi_if_recv_msg func, iscsi_if_send_reply will be called to try to
> reply the request in do-loop. If the return of iscsi_if_send_reply
> func return -EAGAIN all the time, one deadloop will occur.
>  
> For example, a client only send msg without calling recvmsg func, 
> then it will result in the watchdog soft lockup. 
> The details are given as follows,

Lee/Chris/Ulrich: Please review!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq18soksgji.fsf%40oracle.com.
