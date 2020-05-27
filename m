Return-Path: <open-iscsi+bncBDVIJONZ3YDRBLM2W73AKGQEXZBO55I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CC51E3560
	for <lists+open-iscsi@lfdr.de>; Wed, 27 May 2020 04:15:10 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id gw3sf1262074pjb.1
        for <lists+open-iscsi@lfdr.de>; Tue, 26 May 2020 19:15:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590545709; cv=pass;
        d=google.com; s=arc-20160816;
        b=vFDbezqi0jZP9pPpBpSXXAIPKPuVw3Ba1ug3pxKsu8/7ZmdCI4TyGsjwhCcXwiLOee
         oiNulJuyWImp4rbj5RdLGTfMRaNrm+E2G0Uu1Y2mLX8NqPaiRDyui35AGVKWsZHs94YX
         AsTPX7j4bFAwmWhZFztNzJiZFeya/tYc5QNclKGaTTUXskrI/jkm3V5CJjbtpOyQ/VgM
         +tBIuaDhrwgJOe6Rw5aYPDDqV3k6llTUQA1rXXqkKUGyeOTvGzEunuSWXozzDGtp2ncU
         /wN/tDG4ENLGyr65FVMpdWLCG4bEHMufG5w86+ayyuXge7pfe/Y9PnVpt9aajI6avlaX
         qsyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=owuT+IyJ54cCHscdW7dnoW7Mpg0+SZf10IyKTrQvrX8=;
        b=m15ZjFsUlnfwanqbG8qrO3kOpTwyRtc9LkHkbgcmmbpDyfaPq6nBDCXv7j6xLSDCtg
         R6FEn+f1Zl+glMduQcSRpZpsfyYc3q8ROqz2x0zVDaQmwNvR1AG1OfJs24O2SLQpXp0a
         4/v3GJXPiC8Tnbu0z9csiMAWu2N4cXQSsBzONM3xMrBynwE2PRS5xIRXdHIEwuuSrq2f
         AMDpTaVX9mC6xo+cvJ5yoWMW/BnAyimBKX5d0wN1Sf/g0R52JvAp0MzMhHbU9xw7VTUW
         aBzuBuvrgqvQCM7+R0xSBV1TUiuqsXDhsk3UzbaUcSHMU0WuB6oh6YfsGFq05xx29yn9
         85gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=PlfVhglU;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=owuT+IyJ54cCHscdW7dnoW7Mpg0+SZf10IyKTrQvrX8=;
        b=f3Na4e84loeCq6UwMKcXy9UK1AHLr2BUQ6UlDVhBmmr+bWn82XrOvKe/7AhSIpZ4ke
         7EvQc+MqR25s6d5FdzfkH8A9+fsb3A8M1AFyaMB3yNNwUtnbHOvgVBshP5K2YOfPEmiz
         mXoixXQKw8m+Rut4RpY0z/mTrvai05HEZtkz5+PadYdaWoXZzms96j0A32RvYqWj+LQD
         irb0ntmM8uY1AlAKY5IoZ2KwpZ5x95QZsKeCZoWT7saqIgPnp26uD1tmtMHS5igMupd3
         uStYhbplvnK+NmobYhJguzK2U/pHn3p/4aAq8/7wPxdY+wkXsEtkeNzJQoFY/BPSncGT
         Q3zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=owuT+IyJ54cCHscdW7dnoW7Mpg0+SZf10IyKTrQvrX8=;
        b=GPMeUm/TBLDiQLTiw6zMAiTyyAy+xDIIDrkITRgGj9JaDDhbVvOfHmu09AJDbfidaa
         bM1ygeb42oK0kWaw5nTlerEnTcy08exsWDUg8ZnOPGJWeoNgmjuKzl6ZkROW0gjbjdx9
         ZoqMaedKv80ykZ2OV5AJh89YszDu6CUXNt53+VAgaQvektAm6C4+arircCwiPAJDSoe0
         C4OQjItAhmMBTQn++N0vvAmq25u9iPu15ChCa1Ts9jlBz05f0YajZbL7Ju88apX//edN
         hvUVEcyCpsO42F6Pf4kmEolPcWVQJDU82oEJlMwK7KPaFX565f91pIlxA3GfFxRZo6sd
         rJtA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533AjSU0VTsSlIxy/+Eg8czwu9xhKMjEgrG1Z5ojdgXbN1RQQW1x
	2b3zCeFyS3NW8aAWjrL7dBo=
X-Google-Smtp-Source: ABdhPJyYBp/WLN8R7Xr954kidGwYkFoJGJ7b6bYZ4FIyaz/zfIuLokIF5hHBSgctZ1fptT5+Q6JNeQ==
X-Received: by 2002:a65:6810:: with SMTP id l16mr1652894pgt.390.1590545709143;
        Tue, 26 May 2020 19:15:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:8f8f:: with SMTP id z15ls5552856plo.8.gmail; Tue, 26
 May 2020 19:15:08 -0700 (PDT)
X-Received: by 2002:a17:90a:690f:: with SMTP id r15mr2335318pjj.65.1590545708744;
        Tue, 26 May 2020 19:15:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590545708; cv=none;
        d=google.com; s=arc-20160816;
        b=D5MiMrBxhkjh/iLXQ5fVjxpbKqq4WFiZlwqkxFyxRMfX6dkDt4U2M93njWAPv+az+p
         ksAIlqBMmpdjWLxL09p6NhqMUMIBHNnZDHyAGqEdvFV9DEPhTc+FX4JK1kVdVtakXSJg
         NJWYWA6XQxl6NpXPSoNuZn5miM43H/h4sZBYz2N/BCKK0hPegmA0k1OoPErgIxvs9iWK
         4XoX76qK/ekSIBxVRqfaHe4OshB3Vb2RawHs0I9OnBHgCpUGjcPsdcll0XUMDAke35gT
         z97Serf7KjRxCQbyVKvCrYKoDBJZImZM9EzK+rRnHSsFqMjOTqoUx+W039wnGaC1KsWu
         QBXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=B8ApPcY/tIazHhsS+vzu6lbpX4bzI1fdFm/o1K4XfkA=;
        b=P0YFf6H41eIk/8quV5hnlYm2F2L+lzUeFYF5YJsKvCo2Nv00VBaNss/YxCwINGaoDd
         VRbWo20PCHgU6wkYuXiL8aDt0+HsUCusCNITJwLWq8HNuV38PqUahJIRlhPg29PaM6U+
         CtSsbk+cYyCKXuLn3ER2BXX49ctkJmDsDLcP+t8cgxjbLBkDH17J34zvA42YKtaCyN/E
         ViaXIOuMgDD5S8EEL0LGb1Rzzzamn+V/3X+iW30DcmUlFscWqta3BubAQlHL6XSsbyIY
         UMwTO6cX0EtkL27XlbH5cWt260WkDPRcolsDywiKEaX8wYcAC3sjolZgPFYBufJVtKuM
         mRgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=PlfVhglU;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id t16si25409pjr.2.2020.05.26.19.15.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 19:15:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R2COWM164804;
	Wed, 27 May 2020 02:15:07 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 318xe1cy0p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 May 2020 02:15:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04R2Cof4060311;
	Wed, 27 May 2020 02:13:07 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 317dryjttb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 27 May 2020 02:13:07 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04R2D5Mi017217;
	Wed, 27 May 2020 02:13:05 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 26 May 2020 19:13:04 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: open-iscsi@googlegroups.com, Bob Liu <bob.liu@oracle.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, jejb@linux.ibm.com, lduncan@suse.com,
        cleech@redhat.com
Subject: Re: [RFC RESEND PATCH v2] scsi: iscsi: register sysfs for iscsi workqueue
Date: Tue, 26 May 2020 22:12:51 -0400
Message-Id: <159054550933.12032.6330104964795657980.b4-ty@oracle.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200505011908.15538-1-bob.liu@oracle.com>
References: <20200505011908.15538-1-bob.liu@oracle.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 malwarescore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270013
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 adultscore=0 cotscore=-2147483648 mlxscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270013
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=PlfVhglU;
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

On Tue, 5 May 2020 09:19:08 +0800, Bob Liu wrote:

> Motivation:
> This patch enable setting cpu affinity through "cpumask" for iscsi workqueues
> (iscsi_q_xx and iscsi_eh), so as to get performance isolation.
> 
> The max number of active worker was changed form 1 to 2, because "cpumask" of
> ordered workqueue isn't allowed to change.
> 
> [...]

Applied to 5.8/scsi-queue, thanks!

[1/1] scsi: iscsi: Register sysfs for iscsi workqueue
      https://git.kernel.org/mkp/scsi/c/3ce419662dd4

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/159054550933.12032.6330104964795657980.b4-ty%40oracle.com.
