Return-Path: <open-iscsi+bncBDVIJONZ3YDRB3POXPXQKGQE45BJ4CI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 193CF117D44
	for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2019 02:39:59 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id a17sf8939175pjs.20
        for <lists+open-iscsi@lfdr.de>; Mon, 09 Dec 2019 17:39:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575941997; cv=pass;
        d=google.com; s=arc-20160816;
        b=nTKXgimoW38cyBuGaewpF0mBPxDOuLncI0d9BTdIDlCFLvaSTLLhK3oJCWDokPtLyq
         bVPc+vtXecXLqW/Tr4VF/MFb64cXuMy+EovK2PxN5K323EGYqhBI7r0S+zOCOMIk7CVj
         Bc3Cy6u473Iros6/xxSJzZoFFysDhh51x77By8WzCZsS9kbiwPoO/Ll+jH9R7mOoL2dq
         sATfIpi4sZ53JdCRt697z5qzc+5vb2Nkygdmuz7EHjIDwSY7Sb8qOfia6XPJGOtErPkm
         +esI7iszfbiv214KqejQDNh7irTPlGOLGReWnwBw35eKO/PsuBjASGgEhN5jBhQnfmPW
         RhYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=BSpFRw+CGWA5ExQfCIW1vj1R3pEbwZom0oIISmBG1x4=;
        b=ESIWA9K0UUT9LSsILbzI0FFTWo8KD1iDhttIVb00ZcNT2+EaKp/ddZQ1vj1/64cnAp
         3QFR3FSN3iBNxEDBRxxj7ICXnqxJL4YmnSrj5bc9fD5T/x2ECbJlhZgR719ONblWXGVp
         b4kd43PH03AKRcvLRhX7esk+uinywxCguunb4TpVeZ7BR0+GsPFj0PQn/exz63CJ9Tyu
         EuC9IRfOEqsbhQ/TUBPwiaONwicDYCT/X0+Oyoqu6RKVVKU0Kg+KkNmWWjtL0ykXXwqw
         aHfm6HknRT4EM8F216OxqogEz2C/tqt2k+MC4+cg6eeQ/Dt8jxY75CE2S9gBtnggELUC
         dGFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=h12ow5T7;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BSpFRw+CGWA5ExQfCIW1vj1R3pEbwZom0oIISmBG1x4=;
        b=qQUjds73Q/lxEkyQ25ez7e+9WWIw43pmS3WpwDteryPrFkbqPxg99EqHZzU7nsC3Ml
         3Pm+LBGpqnJuNuJYiLB4jssQzGs3EwPcTpvr8W2ZeW7vjuuRpANVvc2kje9I+tq0rZKj
         HeresgGfxWK/TfCpV5qP52F/s8Ab4AkVoIILwle32k5luw1xxV3ak4fy32pc/RivKvqg
         edbb2gA7FeZwcOT20j/EbtorCC/SY2GU+6hGosEdoDtg8+0jtlQcJFBNgazMDip6Xddn
         ZS8f3xAWDwWqnSTsPvCVCarPF/Jr2tvUi6RAWEqcN2WOCnkgEgjZ7Js2WarKiNyIjIUH
         kGhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BSpFRw+CGWA5ExQfCIW1vj1R3pEbwZom0oIISmBG1x4=;
        b=nGDsCRisHy+K+VBDDumqdpNEmLU1+P7mlGuADVg8ygxhvV1n1DhvpCWDudWGH0YDq+
         g7jfBeIHAFYqTjDgCMTZ2yu3viqr/oyKI80EvwnI5QRX9WgqquCGspH/rE8ECgnoFxpu
         QaKqZ07efDeVBqXKITGs3BUVwbHcwYfN5lf9IHym05kdDRqQlnnXzqYx6nk/1P4Sjr2f
         8xH1y78Z8fbce6+Wk+6c+F35epHXOQ4Bk+M97FCxOmfGVjSWWzLiPVQ/g0EpX6byFBRU
         m+goaxJOsd6rdOVruznsLdDGyjVTvxbTF+lPkc6oCn6ZnQS0qdDq0Lq4jAC4cLFEDIKS
         WOLg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXu9WadqiRSqxIcsNWIzG3Uo58NahRH0pyBaTyB2ZvKl1JQegNq
	Nbgtg5H5Ay3t30ymr6hOZ2c=
X-Google-Smtp-Source: APXvYqwK+q7Mf1ZjSOOYI7p4JJWYGaAssM2hhngladsJj/CaekievbzkZ9AqsaFAh80/Vi9chLBqUw==
X-Received: by 2002:a17:902:7448:: with SMTP id e8mr30508177plt.299.1575941997641;
        Mon, 09 Dec 2019 17:39:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:aa97:: with SMTP id d23ls4022393plr.12.gmail; Mon,
 09 Dec 2019 17:39:57 -0800 (PST)
X-Received: by 2002:a17:90a:1915:: with SMTP id 21mr2397833pjg.82.1575941997255;
        Mon, 09 Dec 2019 17:39:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575941997; cv=none;
        d=google.com; s=arc-20160816;
        b=y9N5I5T/xREKeDIAiJLI3cGHctZW5sL6ihC383yk54O/nVqxb121LLQ7aM+kHMRlIa
         9nCgG0g0hUtKgpD8RL+aNA8FochHqfs3t3VOREyPQkwlO+OXC67Mzf/WgvJGKaeCED7z
         qA1Xzy3JY0Fssim4OKptTSOdaElHzE69Ai8KTMgUYZG2ts6f3+oUtA9k0V1kjuI1FmRI
         e/mBaYJoV+//NDp/5gPsMeiLdPcdjiDe9s1N4/XTxiwly7J7mP1JkO6VRrNqi7vZ8o33
         os+eWJmpIDDimqGPQ8BwNM4DbhkHePx5Trk4z3vxtOdzTp4TnhUkNanVtWAeqBojbr2I
         ljhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=oyUzKzdeM0sxcJ7Rn8NSTTlnn7CO7NRM2Vib/efPBPs=;
        b=WirirV5wRxN+8gdip8KaPMBsPzckUMBIx6XD3GNs+ab6CdlPCKNm68X/mSMoOHIYu2
         pA2RXMaMnUnQ5fHH8gQNLSvFTnRd/zOLqRh8hovuNq60a8MP3emFS/xZHYn/2rSoMez0
         pzRKcfBHle2C2dAP7/6ZIcN5W7NBpGX1ApHbPY40XRnYxRD9WPey0DVf9BMuRoihnrry
         AWrMm5C0VDRH1mKqPlfmw6vIkeg2mk/cPq9ig/CVaYeKHIX1PsRJhfuTdmZZ51zW4OOe
         wlYheStb6PSrWVRJRaLhGkOZcjBFNvdK/EmtQRAcToAlm5jIJtf+QeJ5ynNEp5BhB1N3
         q9dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=h12ow5T7;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id p5si10844pli.5.2019.12.09.17.39.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 17:39:57 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBA1YOVS103590;
	Tue, 10 Dec 2019 01:39:55 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2130.oracle.com with ESMTP id 2wrw4myy6r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Dec 2019 01:39:55 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBA1cvni170721;
	Tue, 10 Dec 2019 01:39:55 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 2wsv8awr0m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Dec 2019 01:39:55 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBA1dqKd019213;
	Tue, 10 Dec 2019 01:39:52 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 09 Dec 2019 17:39:51 -0800
To: Lee Duncan <LDuncan@suse.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
        "wubo \(T\)" <wubo40@huawei.com>,
        "cleech\@redhat.com" <cleech@redhat.com>,
        "jejb\@linux.ibm.com" <jejb@linux.ibm.com>,
        "open-iscsi\@googlegroups.com" <open-iscsi@googlegroups.com>,
        "linux-scsi\@vger.kernel.org" <linux-scsi@vger.kernel.org>,
        "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>,
        Mingfangsen <mingfangsen@huawei.com>,
        "liuzhiqiang \(I\)" <liuzhiqiang26@huawei.com>
Subject: Re: [PATCH V4] scsi: avoid potential deadlock in iscsi_if_rx func
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915E3D4D2@dggeml505-mbx.china.huawei.com>
	<yq1o8whqem3.fsf@oracle.com>
	<ccda52ac-2ea7-b0d2-e36e-08f162569c7c@suse.com>
Date: Mon, 09 Dec 2019 20:39:49 -0500
In-Reply-To: <ccda52ac-2ea7-b0d2-e36e-08f162569c7c@suse.com> (Lee Duncan's
	message of "Tue, 10 Dec 2019 00:40:59 +0000")
Message-ID: <yq18snlnel6.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9466 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=797
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912100013
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9466 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=860 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912100013
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=h12ow5T7;
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


Lee,

> My sincere apologies. I told wubo I had already reviewed the patch, so
> he didn't need another Reviewed-by from me. I see I was wrong.

OK.

The patch was all mangled so I had to apply the changes by hand. Can't
say that I'm a big fan of retries going negative but I guess that's just
personal taste.

Applied to 5.5/scsi-fixes. Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq18snlnel6.fsf%40oracle.com.
