Return-Path: <open-iscsi+bncBDVIJONZ3YDRB5V577YAKGQEDZKQEZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2403113D2F1
	for <lists+open-iscsi@lfdr.de>; Thu, 16 Jan 2020 04:56:40 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id z21sf11763877iob.22
        for <lists+open-iscsi@lfdr.de>; Wed, 15 Jan 2020 19:56:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579146998; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLyUZ+GOyxY/ca5M8S2ECHdRNHkX9bsprwAt4aTC02+rwH47hNX+tf5AL1SZHO+FlD
         P8qiIQpzjeiYTpNzSRg7wZJBDyqUjn5tgTpfjXR4LcNaj+UMcNNCFpE4U8o4xCsB2KrU
         YNl8ys53nvqv7qsVHpvfO0QcFi8+Bt+WGwRJ0lC4R6rqEwXFLdWNtW0dGbUY6TX6wnw9
         IgEqnid8KmkFYQAGu+4CMfUxupAeRca4bmDf5YDXttd4erd3aA/hF5l3FejMEgRfCXap
         SIS1iVpMNUByujxtXZImZfCHZuG1RXYg86o6quTz75CRilAPr46YZh3XsnVEYX3lbsyF
         yHwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=HixT4bXluKVj4FA+yHmzPiDXTKuz8qXAccJczhIgRBA=;
        b=S8UUWN4jcN/doMBnWtIMx+2K4Q7w1C90yX6av+YxSA8lqwnALM1cBftxTyXmxjFQKa
         e1JG3VTRy3y87OuIv0OLmI57Dw2ggTSfRk3FJKp9/uVzi8m9fhOD7kLA/0SgU2lDJ6aR
         W3xqieA/7vEtSYCMln2szUhZEbj1mVsQ7M9TkqIV8+XI4pm/1tQWrSenoXoJLLNYNmp/
         zMEGjIq84dHaajNInGRq6DFoD6lqxyQ755RXblOIa3z9dn6PzcLVC2PjKkLUVZkZ0mFS
         lfKgBs00GJ3dNy32KEPjU396Cm8jts43MXwj2vXp3J3ppde8wB61ZwpD+xPkTTh+sYoX
         X53g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=TfowinsV;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HixT4bXluKVj4FA+yHmzPiDXTKuz8qXAccJczhIgRBA=;
        b=rBMqr9+uULGG4cWNtP8TExgJhSi2n9imTWCifVIlTHhlM1Q1OCLWsCztmH9pzlyr4q
         e/tsYPZL9hWDs80XYucN9YvcSFeRefPV2mEM2xxJBYzHZKggK/g6bwMJF3UhKmYtxuwr
         IkU9ViGXMUCj7Nmb2BRLeKfWYQc7R+lpPhmFhktdCkNmGM46v6zjuXFUa4nHwL6/O+BP
         swuCZJeEAVbUkKjLfwGaAB/nOXBulciFe92Ps89eHLNQuAfxv/KRg4XS3QORwCKD3V7t
         caULU9d/cRyZq3mf90Lh11UgfiqkThJqakZKN3hdn8KoD38Ld+Q1Fn1M4PmqQ/sP5SxW
         ns/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HixT4bXluKVj4FA+yHmzPiDXTKuz8qXAccJczhIgRBA=;
        b=PlTodmWmfT3n0LJvlIBVCW0dBOt2ralR26t95ebXIxrzbb7CeGsoDaXP/UjeK5evn5
         sHwXMmm/6RF9iuzEr5ax+RxW5A0Ql8w9dbykoSXiw5VGP4UaRKpYGxMuMZGecosBukOX
         N3Tpg+/OztJj3G54b+qa7n1lYMijIzrySgK2vZZvc3O8c2DWI0ikgSQ7Ny4OWOxF4TPi
         WQRNCqZiFfXgnDLWYD0y62V71ZRkOVPdmDxD9hCyqC0CgL2HIDOb796k6tnsZPYIjAwr
         CZYgBM8nL2U6qRtqtseh/CMwnXHmZsfAWlZq7AUKNi8JqjjxxtomiR8sRp3j6za4cK2O
         doRg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVYY5sMDKakxG5TBLitIGWpXJf60jOpwcnXvMt+vlRDkDDoVfXx
	PL8bX52h3tNFUAj5TjzhXUY=
X-Google-Smtp-Source: APXvYqyMwbjtR7A8reIGQiLmY+ZdX7sKiCdVBgwyylHBs5Ld0Lc5aJhRhO345dR761EYyxwIYcZYBA==
X-Received: by 2002:a02:ce5c:: with SMTP id y28mr26793056jar.96.1579146998293;
        Wed, 15 Jan 2020 19:56:38 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:5f17:: with SMTP id t23ls3322726iob.10.gmail; Wed, 15
 Jan 2020 19:56:37 -0800 (PST)
X-Received: by 2002:a5e:dd03:: with SMTP id t3mr24219958iop.128.1579146997444;
        Wed, 15 Jan 2020 19:56:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579146997; cv=none;
        d=google.com; s=arc-20160816;
        b=Q98TaaG1i3ubrrBhnUOVo3czBp0rKdPMkRWVjqprrkVWWh6z9m+ygAZ8ZbLthnguE2
         smjVHKZXJyOC6zXk+3wu6fyBNv/7kn5gINbJUycILc0cbTrLMaEj/LNqWaz/a61Ub5ej
         QuyGi0v+5An7uDhWWpZmvZygD3yTC6UJwHcfzZHQFybXDNQxdWONcviHzd5SSD5Dylgo
         kp7vplUV1BSXWnYPi+/8qr78fMPxdbmlyR47LjtYgj4GdfVpPY5fDQWiGojDjS/zSG+Z
         up43X0WXGN1sfYtD3Pa26L/+tfQBIYtw5A+gqTmX2A5Ibnf3qTPfP8YuTaawmNUQsoyV
         fhkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=EegwV6a5lz3yvmDbFo0iIcaUYbRPgSupJsICVj3Wnhg=;
        b=KWk8iayS+/nWVwlyl1mDlXeYq4qd9jthJSEzH+x0oI64JMiaEpDuFrm8hRFrfB3YrP
         gu/svLIa1ByNLpZCFg0pYs3W2bs70PkGibfonHG7YXjKUH0stMVJJUTeIFWfNkfqCCPF
         Fp5zGInUhbgmBAUv+pe1IutjDoNqr7/XsSQfm/baLKvRRiZlpQ5h8okLqbQyNT45Lp2k
         wmAPysLCiOrG9BoUQXtYp5lLcxpTWTPRgkvaiMnoUuW0rzQ1DnluUWCISNzj8fsCKEF3
         +2ll2Xj3Ch+AhwRqcMKx8v9m1+5N8CJJj/kRk3g6rEVr8+XVtU9DFqGblc4AkkAELWhe
         V9uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=TfowinsV;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id z20si955142ill.5.2020.01.15.19.56.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 19:56:37 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G3rAlM120822;
	Thu, 16 Jan 2020 03:56:34 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 2xf73yr1bm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Jan 2020 03:56:34 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00G3rQOo168380;
	Thu, 16 Jan 2020 03:56:33 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 2xj61kukqv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 16 Jan 2020 03:56:33 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00G3uVgQ019776;
	Thu, 16 Jan 2020 03:56:31 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 15 Jan 2020 19:56:30 -0800
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, lduncan@suse.com,
        cleech@redhat.com, jejb@linux.ibm.com, martin.petersen@oracle.com,
        open-iscsi@googlegroups.com, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 0/3] drivers base: transport component error propagation
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200106185817.640331-1-krisman@collabora.com>
Date: Wed, 15 Jan 2020 22:56:28 -0500
In-Reply-To: <20200106185817.640331-1-krisman@collabora.com> (Gabriel Krisman
	Bertazi's message of "Mon, 6 Jan 2020 13:58:14 -0500")
Message-ID: <yq1pnfknjf7.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001160030
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001160030
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=TfowinsV;
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


Gabriel,

> This small series improves error propagation on the transport
> component to prevent an inconsistent state in the iscsi module.  The
> bug that motivated this patch results in a hanging iscsi connection
> that cannot be used or removed by userspace, since the session is in
> an inconsistent state.
>
> That said, I tested it using the TCP iscsi transport (and forcing
> errors on the triggered function), which doesn't require a
> particularly complex container structure, so it is not the best test
> for finding corner cases on the atomic attribute_container_device
> trigger version.

Applied to 5.6/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1pnfknjf7.fsf%40oracle.com.
