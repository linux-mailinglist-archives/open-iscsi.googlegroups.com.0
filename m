Return-Path: <open-iscsi+bncBDNYNPOAQ4GBB2GAYS4QMGQEJAY3D5I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3c.google.com (mail-oa1-x3c.google.com [IPv6:2001:4860:4864:20::3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E199C34AD
	for <lists+open-iscsi@lfdr.de>; Sun, 10 Nov 2024 22:06:52 +0100 (CET)
Received: by mail-oa1-x3c.google.com with SMTP id 586e51a60fabf-29571f13c49sf1828081fac.1
        for <lists+open-iscsi@lfdr.de>; Sun, 10 Nov 2024 13:06:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731272811; cv=pass;
        d=google.com; s=arc-20240605;
        b=XKBSGZYq3syRaVpFUms9XRjmXZ960K1G2oSwgqJ6JLP7otBcvnN8SnW7RfJHmY20c/
         VUqzAe6Va67HBY1NRHZLJnHct1op7R7s4wMgYZVJXaKzG0kdqUoA/plt+eL6a9oMv65/
         CzXM7CJOuLAkDawR/eYp8gT5RDVoidTOUEhPC0gso5B3eeSxG8RVtq8nrEJEP/o8wCOJ
         gi79IJSLFedCLRM+z8IKKmKdpwYdIuVCEoeqbHouj7yJcvbx2X38mkl2UYOKrF63GdNt
         r9rXDErMcuRA4DIlQOk2CgWx/Uh/mOrTgR3Vm7QuYkpiPuKzlsQKecdQJsVLJqVhTu43
         Jzqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=KDpqSWyC67vdsD+RoffdbjjB0LNTStyb+vljQCn5iac=;
        fh=Kb1BYf+EPDxnuG9YSUfru6YlUdI9c8YAx+EyGtJ8q5w=;
        b=XH9me13wZils82ZN/bpx6eOM3D3BLwMCIxroL4qyj9k7xhNn41nfCYiFczsT0L7Vtf
         GSudWDJ4mDWrdt6j4JcOkiuI298pvqksYoKXtzAc/UtuuBEzDfQCJmrlTHj87IAlJnuB
         XHhk6KffI+bRrx8imTdp6BLRzq36TsN8Cw7qNBgGbJ+mJTi1tKBONIogr3P0ydikGNvK
         nY8Ec5B8vkNdmw0AktYV+3p5RWvmn1h6xtuset+4oEAnEm7LvPSqNzLlJvfrph1wwSqs
         jHo9wvsEFqQDjda9Ghn6165a8/RljYB1UL1Vue6NQbMDfZhKqSRP1IjfUenCjkuKrfnH
         RFuA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=NAy9tZrN;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 44.202.169.33 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1731272811; x=1731877611; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KDpqSWyC67vdsD+RoffdbjjB0LNTStyb+vljQCn5iac=;
        b=G1zFEQlFYwwgjZlCWDLdih4bJOsmqbJIASFJ2d5pW1zOqGU1VmuceAbbMZ2ZQkaqMR
         7uTmVHBQKbBd7iRJj5HqKx3+9kH3hw8fKIWIc2mpFO+XxFQJA6+QUy36dxDtUtSjJZqt
         3DBuszKr/KI0WeD05WsbClE9aniUDB2fi5Q8KHhOGzcKb7rMGrLYCCuk9Xe4nd+eZppf
         2YJywS+CazgIix7GZbIw91LM8ng1T3nJMRUfDTEsO1dodCps4+wOhNFjH46z8fHp/UrQ
         ORvlEdrS3d6FPmjJ6Wi0O5dCBskk9AeYQcW1t0HxaXVXsRmcFOnmTcvOAIieS6G78wDX
         dMyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731272811; x=1731877611;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KDpqSWyC67vdsD+RoffdbjjB0LNTStyb+vljQCn5iac=;
        b=bcDAYkX/g5OaacAiSd7JGHz1h3ZVsBUBP9rqYBwnoqS+MDDPPhyKebbH5uuBOQ7/6a
         b4XV3MMWG/lVkpKBjwWZNJJSgaUY9z6EfxCz6MS+01kASQaZGTFTz+P6rFkfxbpwATrd
         Kl4tDnv+dX89kTQS5uuZRyWUwY2b/mnOmnzz8X8FSblCMCT95c+yRTWQw99KegjmJbp0
         +CBuNGgKoRaxx63LPfV7+swAAqEs93gqDVHWKmC4wX/pf3tumO6IXCfhLLCGBbQwezgd
         c/R9o2TLWdaR/7jPLT+PbYw2pxdi1oilCxAEQVP4eXU9BPnq6dmzvBRN9YH77iad8mvc
         1Y/Q==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCU9tcjLQI6tze0gRJtdRpBqg4v7Gqco+twEKitRaZmQhjIrZ8TUgOgmIBB5wfn07lqYGHWd5A==@lfdr.de
X-Gm-Message-State: AOJu0YzUe17BVI6CRdS4GtfS+avi+OqYH4HDgLQJQC1CwJbq87JPfmBM
	T3Nv6b3ytZ8OTqzDSO5t2GyH3NJAtU+PkgqNKDNCx37Xmymr/Rnp
X-Google-Smtp-Source: AGHT+IHfVMG/QvVgdb2dIwYalav3clDVdm6DDFbNEDcCAOLtGe3QzMLfotgd3EmrJziBH/uFLy9QPg==
X-Received: by 2002:a05:6871:53c5:b0:288:783d:a0d3 with SMTP id 586e51a60fabf-295600076c9mr7685582fac.3.1731272811130;
        Sun, 10 Nov 2024 13:06:51 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:330e:b0:287:bd77:a787 with SMTP id
 586e51a60fabf-29540997ab9ls1209504fac.0.-pod-prod-02-us; Sun, 10 Nov 2024
 13:06:48 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUJlMnyZsmZZ/o3JeDUQwFOTAN3s8tZbJfQvr1CsjFCSA3OCZNQTwDFxIPQzF7Ag5Rm3RoyiiVdAK1X@googlegroups.com
X-Received: by 2002:a05:6808:2390:b0:3e5:f7c0:b8f1 with SMTP id 5614622812f47-3e7946cb547mr8987233b6e.32.1731272807817;
        Sun, 10 Nov 2024 13:06:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731272807; cv=none;
        d=google.com; s=arc-20240605;
        b=jWgb10SPrClfd+i1ras1uBah1SLRkocnrJrI8vOKFyai4HjqAsUs1dDTo+yOMuCPMm
         p2KhLk5rzWThGR/iJB07F90OIHctuPt3m2pqrBf9D9bU+w8NWq1cDi2k4PR6vZynJWsm
         x8m1pc2/6xmHNOtAkUmDl0bElmcaWwRc3QYLwC2OJPxkfedHhQQiEIRsNfcGlVTYPugB
         MI3GOo+/przQfX4hw3q+mo5ly7vtYPAJJ1annwQ6xeQTutAurbEYz7Cu/fitIooPSyRO
         nzSoplwjLe4OZfWpooNryCyXxPIGFiXxXeSN/sE0zKsB50Yw5dnp6pIn9a8EXuLol4HP
         Ht8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=o0adg+1j4txtlNvaOHyqcPDOTVdpAEqtR1MV+0wO+Sw=;
        fh=QwfNGvpb4Gb8MhL0zKj5O/WtWuEoZN3wIcJ+gLm4Xi8=;
        b=BgfP5Q0f+8pmHkByklJpKQBSREwVUIiWCeFByPu/JJk7D3VotO59gVlffrfhkkTKYa
         B1ed4nnkYETMTaJX5/pI9KiVL3eEgXqaKUFfkr0Rgh0owPplP3jubv2Nud7e8wQ1TlMF
         Z+RGw+kbl+teE8wFXSPyc8rp8JjD1NozJi+Zs4B6aZ5O8yscC2LLPxc4gxn/Qql+q1m5
         ctHSSIhPdjoWSDZ4yA6X6QHWZXoOZNky0c6Rz0eGuOTW0M1c0hSdylzG1hWKdHvgbSSX
         n0eNZrl2UXjcnNX1W5b9TsUq3XCrFb5SIm7B0P3fu0Jd+g7oiKYLofYf60bZEd/slQ5N
         ZmNw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=NAy9tZrN;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 44.202.169.33 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from omta034.useast.a.cloudfilter.net (omta034.useast.a.cloudfilter.net. [44.202.169.33])
        by gmr-mx.google.com with ESMTPS id 5614622812f47-3e78cd58e81si308404b6e.3.2024.11.10.13.06.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Nov 2024 13:06:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 44.202.169.33 as permitted sender) client-ip=44.202.169.33;
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTPS
	id A69ttJk8crKrbAF8xtDtCy; Sun, 10 Nov 2024 21:06:47 +0000
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with ESMTPS
	id AF8vtMYXZWvXpAF8wtI84Y; Sun, 10 Nov 2024 21:06:46 +0000
X-Authority-Analysis: v=2.4 cv=LtdZyWdc c=1 sm=1 tr=0 ts=67312066
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=GtNDhlRIH4u8wNL3EA3KcA==:17
 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=7T7KSl7uo7wA:10
 a=-Klr6mLr8pg6UDE4wXQA:9 a=QEXdDO2ut3YA:10 a=Xt_RvD8W3m28Mn_h3AK8:22
Received: from [177.238.21.80] (port=43976 helo=[192.168.0.21])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1tAF8v-0045Jd-02;
	Sun, 10 Nov 2024 15:06:45 -0600
Message-ID: <8bc69322-f630-4235-9ee0-501e02623dd7@embeddedor.com>
Date: Sun, 10 Nov 2024 15:06:35 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] scsi: Replace zero-length array with flexible array
 member
To: Thorsten Blum <thorsten.blum@linux.dev>, Lee Duncan <lduncan@suse.com>,
 Chris Leech <cleech@redhat.com>, Mike Christie
 <michael.christie@oracle.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: oe-kbuild-all@lists.linux.dev, linux-hardening@vger.kernel.org,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241110151749.3311-2-thorsten.blum@linux.dev>
 <202411110336.IDRXgcR4-lkp@intel.com>
Content-Language: en-US
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <202411110336.IDRXgcR4-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 177.238.21.80
X-Source-L: No
X-Exim-ID: 1tAF8v-0045Jd-02
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.0.21]) [177.238.21.80]:43976
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 3
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfOuhrISCSjH1MGo3bp4Qj5hqXGJhOB3hDE69SEFRXP0guwiQ9H9lVwzlBAV8pKux32OGQSQNSAOy243vKIo5JLxeHMw5pl7kJH4lc6GS/jBESiM8M57j
 lpEmuRg367+JgHdFbyftRUAnBv706EZOVCuVkzSqwQ5vn/dxciFPGRGWGhD9ZOFgfyrfFdKditijA3Gml/Mv6YpKWgN/GiO7KJu9XZjUHNCXuXBI6jh+Flfk
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=NAy9tZrN;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 44.202.169.33 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>



>     In file included from drivers/scsi/scsi_transport_iscsi.c:23:
>>> include/scsi/scsi_bsg_iscsi.h:62:18: error: flexible array member in a struct with no named members
>        62 |         uint32_t vendor_rsp[];
>           |                  ^~~~~~~~~~

This won't be an issue in the near future, but for now just use DECLARE_FLEX_ARRAY().

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/8bc69322-f630-4235-9ee0-501e02623dd7%40embeddedor.com.
