Return-Path: <open-iscsi+bncBDY3NC743AGBBIESQSFQMGQEBFD4KRA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id DE95C4276DA
	for <lists+open-iscsi@lfdr.de>; Sat,  9 Oct 2021 05:14:41 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id y25-20020ac87059000000b002a71d24c242sf8998979qtm.0
        for <lists+open-iscsi@lfdr.de>; Fri, 08 Oct 2021 20:14:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633749280; cv=pass;
        d=google.com; s=arc-20160816;
        b=QekSsxGpKNvX+N9RKjOY85AJMP5AHqojhSB48oxK6IFUQymraPboMfMfkJ8nJi/3k1
         jaP7tIjFQI+MCYPECSXSEXVUniHyMNu1DVSyzLasWCFqSiMBdTtlO0lc/f21QVPGVjAh
         tpHNTR0pzoQmeR/NJCdAkesnny5c6xDllAAWrdmzPnwUTpl+zR+btE+YDTZDtNwvpawK
         8Lf2qG+3747vc89A1BEtohuHRVhgrex85P96bN7AluuJovKhBITk1MoCs1rmSOkpS/uz
         r0mZSk4g8ldskJyjEd2z1aKqSA5E8V+IMi+CMnxAnPUq6Q3D0VGWMaargvgqLB5+UHS6
         iyJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=jrOcgf/xxl+DBsNuU9YiVQOIyLPWTnxfYWwUetaudN8=;
        b=QppSyO+uaA/i/lvNSXF6MHeVqunE92XRUB8F/NQwbVZvXL7wAavYm6NTykBpaAfGFb
         AeyDmnboWryNbFnCUthUVWYrIiRTaHMzjVaIxOa+1hMiAi19JgTmXOtCUgnyob9RDXPt
         F0b6+/HbswpjvjzJMF9PyTKTsrQNJCludC5KiBOipKlAujBdTY4alEsI88c6iBjJXOwk
         IiI3AIygaYNZNXIzlaAAG/b6Y3QdSOnpHVoWsCi8pbFEptILM1yVWnYAx4lFOBk0q/Sp
         Q1ziHB16Af+rU09OjBJTUpe9moxV5d+p4bD4p3vLpvM6CrMJp4LmCfwcd5I1BXRyB9f0
         fgSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.11 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jrOcgf/xxl+DBsNuU9YiVQOIyLPWTnxfYWwUetaudN8=;
        b=N1z+q1LhpydyPUG+bEO70OCWC70Jg9F9/JbkEmYjhU1Cc1ryjR7lFJ9pRZ/4WScG+3
         QJYKtqbhZZtuGo3JnvcZJc3EMVxORZmetZUY/1DvO07lpVRTpLzLuZNGIN9U+TuMDSDh
         H+RSq2QdoFw/uoLMulzf/iWv/CVIqMjPEK5WW+sZGj8dymdZeeNRePtTTCn7KG2vbc17
         zaUwaBcxoTuKZNh+e9ne7aqfFSVrEJWewToT41kSEH2uBqlHmQpszOVoYYFBS4KT6+/Q
         v6dR5SnZ+OyvmfsanDzQ4IjQWk7LC/9DgGNbybmFyzqSEHCfRpka5dTbgqUBhs2tSLY5
         uVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jrOcgf/xxl+DBsNuU9YiVQOIyLPWTnxfYWwUetaudN8=;
        b=koedLpSTmoTLZQK3KT+9BZElNueIxiYe8HCfwuKBziawiTOcQiWkx+Fao7rCsGhM18
         MfS4qe8dVdeqCnIN+1xOfWsTZj8AU6GzUYjNaaIj5YScX1Cj69lvBNSdAPwIt2hIvVZG
         SXhqlCw/BHVh4DvrE2eFPnIiX+fGncUxtNNCAuFn1tU3RTQiMJm22uyiwuPnWKl5zazW
         7i0w4wwVqg4zc/6OwYnHgzUwDjLwvkrmMcF+/sJ7vpM0Kncyaid9uSQ8KGqe0iYCVqjN
         EBARankJYcUKhPqKclAn9jSozK+TAQKp/N+V9MD/i/MPrTyJIKZab5PF1Nbc9EJnwQRz
         QRHQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530d8OBCQTeF6LLVgl7ArREHxmk6p+Joj0LLcGbP+rfL3efE+/BC
	cLgKP9ZdDHwhNVmsMCaQl+A=
X-Google-Smtp-Source: ABdhPJzVUXOLCOHFWehIAfiYUgsZiun2SFvFZRaW7BncZrXQS+JYfiwL1+3EAXvi/hev+5p6VXltfQ==
X-Received: by 2002:a37:9cd0:: with SMTP id f199mr5995787qke.499.1633749280743;
        Fri, 08 Oct 2021 20:14:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:14a8:: with SMTP id x8ls2785451qkj.8.gmail; Fri, 08
 Oct 2021 20:14:40 -0700 (PDT)
X-Received: by 2002:a37:993:: with SMTP id 141mr5863935qkj.424.1633749280335;
        Fri, 08 Oct 2021 20:14:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633749280; cv=none;
        d=google.com; s=arc-20160816;
        b=0dv2WmEMe06j4h3dKVHbiudUpXUd16OiMA5kQhOiarn54vjIluyBa9LmZ9MetMJ9j4
         jPggOEttacL2cIq/nCN7ahRs19hSm92gehTUPGW1tnCPzpw39bRz9TwtkFV/5WWFMk8c
         83zBu5eprh1CrZIMzhiObh8fojMoj+q3bxONDqVFPR0HOLzmu0c2GK6f6Zw0dJEOjj02
         Y+0u+bokhmmz4wthJJvbxQdQx9/RWQjz+Vhd7a2azC8hDOI1aBJqSXjqgyl1XShEuRit
         NdfVpmSWon5QQzXlwaoRShPLGOLhcthdn8cWzm8RaY8oHh+GvtvoyOnIOWUBXdhEcWuz
         6Wrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=4vTWFGe9uzlnioKvU+KSfLMGMI9bjFu5p2JXXpl4PUo=;
        b=L1TeR/fBXPtJ1Jz6UxcDzvqnw/xUQKOShmUqVIDJ5tsBmWxDs5vd8JoKu8mQ8eAtTg
         heDKYprmJ2lfWMQWT9pYHbx5UhBCWEVCnoGtqLTdht9Wrde2Nv9wQfz4kdZnASmjQawm
         9HRkZ7yI10TeuP0BBqfwDRLDb8eN8PvQGQPgDmOD+KjaixBWjlF91J2Wzf+93I+hJ5nZ
         KaVA+JdziPcdzkS1DXnA9Np0BG1Sn+BU4D8QyO6Qsz6nQ99IVXT96c+bgVky2BwEYZhC
         tXrRrYdHCKUz7/cgDdPUDpp5vKEEOgQEA/gRjb7OibhFX/ke5e2lbsLhG+KHMh8R9mRn
         jLKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.11 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0011.hostedemail.com. [216.40.44.11])
        by gmr-mx.google.com with ESMTPS id bj20si26605qkb.4.2021.10.08.20.14.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 20:14:40 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.11 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.11;
Received: from omf05.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 8CED0182CED2A;
	Sat,  9 Oct 2021 03:14:39 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf05.hostedemail.com (Postfix) with ESMTPA id 52038B2794;
	Sat,  9 Oct 2021 03:14:38 +0000 (UTC)
Message-ID: <5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel@perches.com>
Subject: Re: [PATCH] scsi scsi_transport_iscsi.c: fix misuse of %llu in
 scsi_transport_iscsi.c
From: Joe Perches <joe@perches.com>
To: Guo Zhi <qtxuning1999@sjtu.edu.cn>, Lee Duncan <lduncan@suse.com>, Chris
 Leech <cleech@redhat.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 08 Oct 2021 20:14:36 -0700
In-Reply-To: <20211009030254.205714-1-qtxuning1999@sjtu.edu.cn>
References: <20211009030254.205714-1-qtxuning1999@sjtu.edu.cn>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: 52038B2794
X-Spam-Status: No, score=-1.18
X-Stat-Signature: bbw3xsbbdkewqjzc9ac3mxsm7cyt9oi8
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX19VniraqeieMIuZT0TmPUPv+WTE0gtE6oM=
X-HE-Tag: 1633749278-20152
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.11 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2021-10-09 at 11:02 +0800, Guo Zhi wrote:
> Pointers should be printed with %p or %px rather than
> cast to (unsigned long long) and printed with %llu.
> Change %llu to %p to print the pointer into sysfs.
][]
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_tran=
sport_iscsi.c
[]
> @@ -129,8 +129,8 @@ show_transport_handle(struct device *dev, struct devi=
ce_attribute *attr,
> =C2=A0
>=20
> =C2=A0	if (!capable(CAP_SYS_ADMIN))
> =C2=A0		return -EACCES;
> -	return sysfs_emit(buf, "%llu\n",
> -		  (unsigned long long)iscsi_handle(priv->iscsi_transport));
> +	return sysfs_emit(buf, "%p\n",
> +		iscsi_ptr(priv->iscsi_transport));

iscsi_transport is a pointer isn't it?

so why not just

	return sysfs_emit(buf, "%p\n", priv->iscsi_transport);

?

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/5daf69b365e23ceecee911c4d0f2f66a0b9ec95c.camel%40perches.com.
