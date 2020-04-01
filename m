Return-Path: <open-iscsi+bncBDVIJONZ3YDRB3XHR72AKGQEGSKPKNQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1566D19A35C
	for <lists+open-iscsi@lfdr.de>; Wed,  1 Apr 2020 03:52:48 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id g10sf19484200pgg.9
        for <lists+open-iscsi@lfdr.de>; Tue, 31 Mar 2020 18:52:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585705966; cv=pass;
        d=google.com; s=arc-20160816;
        b=dL93M7gAmBMTNa1AVKt+1YAHirrrEsIZai8n0cZZs0zaH5odQCotGCwth6SzU3NqSF
         AKHTZVY6YQRJgTTBsryRx6NZhS3+1nHGXa3j89A4A5w4Y8Y4kVxy2lfPv0wU4MQQLYir
         1SO2LhM5VERrfAC+VGxyUocYXIvnoKoj0bSKhOlYYRkNc9w/+9ISRl9hYMaXURJJVF/N
         WXTBuhp2YEWWpbI+b+8sprPhyYbeXluCO9m4xFnHt0GeXZvrkA62Wd77pYmb3aG5X/iA
         w36DfFb6QkrRqcEOjYCj/mb1rfN+tC/UcduWajcxk8EjQvxbVk4LziMz1DFFgbMGMYzw
         aLHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=HQQ0Eg02/7CbAuEvuraUU/CnPwkCcOraGEfclisMWWI=;
        b=H82KCMTNMgFvepIpw0IawA+4cukewfcbldc4P9ldQBCVGOzxn1qJrORJIDz/u0SMUg
         O5O+R+viIC4WeR+U92pWotZ3fSHq/aQOsNAhPoDW5cokg3P2M7cTh6xWYu0adWMqRt4Q
         LK8KCwSJy2LfQlOXmFKbhKoquq068e3asyiKXN1YsYQ7RmFVI3s6aiujxhUDSjnUpWJs
         C0rHJp12+2SMVvGuTsg46EHhj51dd0gPkqmT09sDRJ2ozQ3RvuSSpGyk1u2XaVhSApQx
         Pg8zVAl3Z6NN/zBIRNUtYzeNIC+uUnRmRFHmpOehvoqrjFODXwkcdvuzy3j6Zbahx0c4
         jl0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Mqo52Tbq;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HQQ0Eg02/7CbAuEvuraUU/CnPwkCcOraGEfclisMWWI=;
        b=s3xFfx6mEQfsF4q/MgIrf6dgWjVTgUU9iAMos9b5H8yRQPkezKeCLFCIpV4bd+Kfam
         VkdAJRLfBJT6qQenm41FcH1C/eXFggybTCCdPb9dLC/Z2fYfpCKxE6zE5kooM7DPWWPn
         Vu0YCOojJG2OK6ck4qG6AzA/SzNE26v0WmTr2zLZwEYfvozTL0zy3O6YocaQW23E77lf
         A1ZZoWxsVOqHly6L6r1O8kvMyXBZWE/R0veJYdV02LrOnUCHSHY1w8NoQoP2JoKpgdsZ
         UGNCXZpzyxyLXSHk1uLIBvnLTUWZoWjMyBgDvoKHc52rBj7r+Vcr8dx0AZKSVpfVDSXP
         WaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HQQ0Eg02/7CbAuEvuraUU/CnPwkCcOraGEfclisMWWI=;
        b=kSkGr+2n7j9QdnSql04mP5Dpc5pTQLhxIkjayjVmjaNFCpXGdR3zkOyxqPKJgK7Ucw
         WfLZ1FV5by90l9G9RtbgltTLd0ZHmFohNOp7uyNNzU7t3cdS046fQe7bojHoIlXwM2u/
         ps+znixqaSBhQI0VL5S1PGbLjpdoXd30NSC6p+sJByQv6xlIIUNKPNVSbn0Tj+DK08Zb
         LldFn0IT0ys4xhdFHfgOndhQ6wRg3hltqXudNgeJu7umtSmju1DCJoXqw71rC/YZ5bXu
         dhyxJUAxCuJRxO1TEzPVGMenRloiCWzGHP2/V5SBj+VIqpjLLmbRkrukSCY7jnmyOyJV
         LTfQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuYUpMsjAlSfvADUqQi7OeCtBxuIMQITGkkcPziiWmXC3ihxIfWK
	gx5R1+8oUTaXjJLpKnTHGoA=
X-Google-Smtp-Source: APiQypJ5Dv49OBA5IGJexeotmx/BvsypnNm0I2CCS5daB7s5a3dqyt+6CTLLRC065JX+slakKPYrAA==
X-Received: by 2002:a62:87cc:: with SMTP id i195mr14498324pfe.75.1585705966544;
        Tue, 31 Mar 2020 18:52:46 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:98de:: with SMTP id e30ls14940926pfm.0.gmail; Tue, 31
 Mar 2020 18:52:46 -0700 (PDT)
X-Received: by 2002:a63:334a:: with SMTP id z71mr21357383pgz.305.1585705966108;
        Tue, 31 Mar 2020 18:52:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585705966; cv=none;
        d=google.com; s=arc-20160816;
        b=rIB51RmUTh8UT58N9WGi3BqEDIUhTCEo3NfhBufGjQYm5PZGXl+2Hop2/RqohgdLKO
         okf0yrRi99VLBwBNdJB5Miyza9lc70JP8obOWdB7Putd6DP/Ul+gGHMbn4RX7Yiy+LiI
         EPOuHS/YeJlTcr8VHkpMfhddObML8nOhm041v1YkzczEea4lnwfG4sw92DNdLJhFKvmk
         XvKo5iKw49luSN6+bf1v+bpIZsZRxvrDMmnqsPVGvbHPVya/M/cDKkg4+8A0odOkHByh
         23ty5Sn37HhXj+/LSjTKYPZjMLSNSQlaW2G6RxdZRLspPS9nQf2TT1ZINX1hxLpv5fX8
         DDig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=1xjwF4s66rqmiegCQAkE3SaaJURKMcHv5WS1gGuV51Y=;
        b=zTvJpiJLhp2zXXiZaiA/V1i+yFpdjbXjEVQn0UIUNcyAFRJ3W0l5+6zFKHfVH+F+UC
         uRaNq9CsN35L65uL5ZB/5ZTYyJGe5nEAayZTeYIWEQBq2+xn6SHLVIdbAGpksarhtgEg
         lgZ55Z9CJXy1Aq2ir5HITAjnIPGQvc+9cZHF/k5HLRiPhwRw3yd2PDjznBP7GG+QvaB1
         A9fuYfuUX1STYkqi7kTdZhGopBemUfK81ilaxLNSXivzu0i+2JKlQnSyfKBjfe+IYkRV
         ifngn4zPQkBu0iD0KziBRQ59XyniiOuYL8Q9llfeHaTVkWpzAnW9KlIo3jePzU5b0UOD
         d9kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Mqo52Tbq;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id 185si33709pgh.3.2020.03.31.18.52.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 18:52:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0311lYDH018671;
	Wed, 1 Apr 2020 01:52:44 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 303cev2pw6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 01 Apr 2020 01:52:44 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0311qFkn167712;
	Wed, 1 Apr 2020 01:52:43 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3030.oracle.com with ESMTP id 302g4smw9r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 01 Apr 2020 01:52:43 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0311qfHn016831;
	Wed, 1 Apr 2020 01:52:41 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 31 Mar 2020 18:52:41 -0700
To: Wu Bo <wubo40@huawei.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
        liuzhiqiang <liuzhiqiang26@huawei.com>, <linfeilong@huawei.com>
Subject: Re: [PATCH] iscsi:report unbind session event when the target has been removed
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <7cce97f2-4dab-5105-a477-8869d5a4f150@huawei.com>
Date: Tue, 31 Mar 2020 21:52:38 -0400
In-Reply-To: <7cce97f2-4dab-5105-a477-8869d5a4f150@huawei.com> (Wu Bo's
	message of "Tue, 24 Mar 2020 15:58:50 +0800")
Message-ID: <yq1mu7w6kgp.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9577 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004010015
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9577 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004010014
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=Mqo52Tbq;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Wu,

> The daemon is restarted or crashed while logging out of a session.
> The unbind session event sent by the kernel is not be processed or be
> lost.  When the daemon runs again, the session will never be able to
> logout.

I had to apply this by hand as the patch was completely mangled. Please
use git send-email to submit patches in the future! Thanks!

Applied to 5.7/scsi-queue.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1mu7w6kgp.fsf%40oracle.com.
