Return-Path: <open-iscsi+bncBDVIJONZ3YDRBHUX3T3AKGQEZB3I3TQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED311EC757
	for <lists+open-iscsi@lfdr.de>; Wed,  3 Jun 2020 04:32:00 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id a8sf415768qvt.7
        for <lists+open-iscsi@lfdr.de>; Tue, 02 Jun 2020 19:32:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591151519; cv=pass;
        d=google.com; s=arc-20160816;
        b=BDwCP8JR/j0SUdQvrKa6xs331L3NcFU1lAFOd+5nr2fEoakUkbMftMQW9koNBuNk+5
         HqStIApGVgRMxkK4Ckhl+mlHyCgXtlnohEHIfZynxmYDla5Ewpy5y7C4BtIBVDvdSCce
         8L4hOy+4nSHn+wjuZhQxC6f15X/Zfvc8RZQ79kBSamk589BjgMyXtJzsToCl+AiEx32j
         eyG4YkWfiflzDCNVY5g+D2SKPp37+n4usRQNUjA/7yyHGYpXG7bj7ScIyRZgtDAbNzeO
         ycYn7roslpAlCAx7She6OQKdHrb3twJomTaIShkD+/bzTHr94c492sM1F2GBbM1dt6NK
         QGYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=89qNREf33cRxc8t6RcvCOqUESp6thrId92DVwDYdP6U=;
        b=k/Ps+clAfXz0WwCDgFaBwbjmYJ8J8UylHKIvQJzBJOv1bgplbwFF8nUsLm+I7ePO1V
         nikpoprk4L1Ouvx+SN3I0ZtAOukKBBXtYKj9Ylu/YBhP4VwpIOhKtn78K5D9WJXefjcH
         kGoIzeLQn+xRLq3thnV+sY3hMW47jl25fHpYqp2lFXSXGm2pFD79J5tV4tj7SfhN28Zb
         AtEd9D1shnshHDfM+bxC8qMfn732uezNeSMjS54zJxalomJbAIlb1eKySHxA7IX1W0RY
         OLZfoVqaOxoRIyHhE+pj8XHOOUQEj7v9xPcIGSGmSyWfTuVMti8JLm5GivlP8J6Su8KS
         2XKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=OBqT39h6;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=89qNREf33cRxc8t6RcvCOqUESp6thrId92DVwDYdP6U=;
        b=gHNwOXabXwh7g2zgxjuTllg8tvaf1FvfiYKk2qwg3cpJ15Nn6A6G/8lsxUFqKYsIZ6
         EJ4nqKR89fRonqoph7QdxhNCfFvp9bfOtZIgQWzeubHHm6tG5gVSiDlh0Dg2fxaKSjky
         0yOVopceLkKmUwTA/5IriIe+qfchltQmAev7ePWc6T+nBe/7mAw65D+sXjkseGmxstTj
         qjsUvHnDJn88Q1ckSB+T6zIb5YO8VV4XY128ilredXYWTkz5D1aI3MyJ2JxJ1W4Nm0W2
         +7Osl6XYmMzAiZwxReG/1fN/5Hwa0SaReUAbJmWvOcdBu5FVgCMKZVDoxgVpruMuNS5X
         sPRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=89qNREf33cRxc8t6RcvCOqUESp6thrId92DVwDYdP6U=;
        b=Ge53Dah+W5YJffKZRgopxyymVDX/ORqIdCCzrV9S0iwI1lSaqEQh/y1nCnkJovVe3r
         Trp1po/YeKEdNT9D+/B7+SUWN3j5j93BxyPGUrU5EwZ5G6g9IxFdF/sLAp8k0PSaLCgo
         mVBwMDmxNoy7nwhm4EiTpeVZ1K4o6clHe69Natv9oFZeC5+Sati4C7hzfPGmdejb3DbV
         GBbx/pXiuJsTvx06qvHyfqgGzFis0tDats1nJtxWOWpPSPZweuXVijCrC/m74S0rtZ6r
         i27q5fqygwQXOUR8IpxEKlV2zV+CUl0Tqd+x9Zl63xN51B2Jzr7aSF3ABc7FxkbMX8lH
         tyaw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532bXJo3JRBpvnVFWwb0T3K2aEibhto8Qye/MKSPyityTTxPbV9f
	MbVpZenQCDD7YDgCjmvgpnk=
X-Google-Smtp-Source: ABdhPJx1xoMy8C7PMsmFX+msAdKLKl3Oxh9dLN7Y2PZKmxsl39BLaWU3TO+eIxtg+YRkTAxL4zumBQ==
X-Received: by 2002:ac8:6159:: with SMTP id d25mr30972006qtm.70.1591151518753;
        Tue, 02 Jun 2020 19:31:58 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:9e92:: with SMTP id h140ls290237qke.5.gmail; Tue, 02 Jun
 2020 19:31:58 -0700 (PDT)
X-Received: by 2002:a37:6196:: with SMTP id v144mr20775593qkb.337.1591151518447;
        Tue, 02 Jun 2020 19:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591151518; cv=none;
        d=google.com; s=arc-20160816;
        b=g43cOfxUpiWAzIksnEMjxpBRemZ4nbk3nHZKI8I84/AqYQzFwufvd8DxX0GLCg+ChN
         ufTRX7KIYRdms1mFBxfEOo2C/O5Qcdu4Pol3rES9dVp/0KmCqrWug8f/P9FiESQoOn2C
         +C1B48pt3PTae4d4pdlZLciMBeRmhOkcVluYeiMnBwlV+qPDAPt98cIqYxc3q+7IavfA
         gFGOdI5MgMWP+zPyFQcTrjKQzkoYtS2c1ueBXOu36+I8Rm9h0hKNdHmKWAJKXPogw48W
         g+7bXkOMmW62RKsfZQcSEG0JdDvnvq2svY8CsalGcLqSteAUxwsdM4bEuVqAN0ULg3vQ
         /iPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zzVHRLOiQYXnYFpDFmw0PZpsKu82bGLV3htgEoTFfZg=;
        b=O/B6D4z1G63NPPChwpMT9BRerIIKdEpTsoLhrV2Eu7Bs4kho8vNUhbQHqVGAIeRu3C
         wyy6YmfxaJ6RoW8IwWSHSXeUyoQAqZ1+AiUKZ2CoLAayG3i7M0vcPRssjuH+RaBaZq+u
         5ZdB3yBBVHSpzL5Cn4DWJjJAIs9SrpPQNQTPZLUwYi5TuKpvWV9pe44ksJaf2AcikMxa
         MC0T4W5a34hD09hU9NBCglETL+n00zuRJn7pGQ9O86G0zDLt4mw1fl9kN3mN7Y2sMoov
         azlu8x9Eq7D+q8f19YfBOSluMwUBm8sooD6vV3dG43B5/h0pbdMhn+YlmunHi6RPXIjl
         yJsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=OBqT39h6;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id d3si50705qtg.0.2020.06.02.19.31.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jun 2020 19:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0532Rlek188123;
	Wed, 3 Jun 2020 02:31:57 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2120.oracle.com with ESMTP id 31bfem6s9r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 03 Jun 2020 02:31:57 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0532TPrb164237;
	Wed, 3 Jun 2020 02:31:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 31c12q5d4v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 03 Jun 2020 02:31:56 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0532Vnnm015051;
	Wed, 3 Jun 2020 02:31:54 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 02 Jun 2020 19:31:49 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: kjlu@umn.edu, "wu000273@umn.edu" <wu000273@umn.edu>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        Lee Duncan <lduncan@suse.com>, open-iscsi@googlegroups.com,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        linux-scsi@vger.kernel.org, Chris Leech <cleech@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: Fix reference count leak in iscsi_boot_create_kobj.
Date: Tue,  2 Jun 2020 22:31:38 -0400
Message-Id: <159114947917.26776.6215710664403797046.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200528201353.14849-1-wu000273@umn.edu>
References: <20200528201353.14849-1-wu000273@umn.edu>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006030018
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1011
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006030017
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=OBqT39h6;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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

On Thu, 28 May 2020 15:13:53 -0500, wu000273@umn.edu wrote:

> kobject_init_and_add() should be handled when it return an error,
> because kobject_init_and_add() takes reference even when it fails.
> If this function returns an error, kobject_put() must be called to
> properly clean up the memory associated with the object. Previous
> commit "b8eb718348b8" fixed a similar problem. Thus replace calling
> kfree() by calling kobject_put().

Applied to 5.8/scsi-queue, thanks!

[1/1] scsi: iscsi: Fix reference count leak in iscsi_boot_create_kobj
      https://git.kernel.org/mkp/scsi/c/0267ffce562c

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/159114947917.26776.6215710664403797046.b4-ty%40oracle.com.
